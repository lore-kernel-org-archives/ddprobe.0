Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CEC29AA
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 18:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651773718;
	h=To:Subject:From:Message-Id:Date;
	bh=0++apPRgJbWQbN9WC65ZMEIPlSpvV4/5IQm14A44wjQ=;
	b=TZg+kYO4y6FFOqAyKPgu5fSgRffnmJbJcBur/VNKrJ8t7zCas6McKzlkGQkXQFNq
	DGCuXl1IYhha7MvmJd7h1ODEQkibANi6CTXgQ1dbNf2/rl+EWuMozZ9zYEGfRH4CYFI
	XQgDUUt/QKuP5cBlYorIfmJDfxWvkk/XidgPI/WA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651773718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0++apPRgJbWQbN9WC65ZMEIPlSpvV4/5IQm14A44wjQ=;
	b=Alx/VPlorboIC8OArmW43gegzRupWiOcsyRAccXbs7WkBDb4SYKTELjVQQSP6j2/
	VgeHfIpVBfUkfKSPkc0aV6S6Uw1kZLw8w5iIRh3+QwAEx0c+pA7dm1sor+nureIwgcA
	JvYWnse50vII/sb7SswSqdvTzum+mTsjwu2xSKSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809562bfa0-77923ff9-0768-42be-86f0-9cc781ddabe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d299f921f76b320ac3dd47e7dbe9a86b73308401a1e996bf4761e1427846a5
Date: Thu, 5 May 2022 18:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651773718
