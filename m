Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432B7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658591212;
	h=To:Subject:From:Message-Id:Date;
	bh=EYHfs0g62+As+ev1A7Mgniqp827bnV8ukZPnIhjg/yc=;
	b=Jki23t14q82Ex+LdkL2A8fF9ZTIcnfNfS78nHRi8gK4SK2OP8tSOm1gak5Tfwofj
	VzdWD4abei7nwVCJUSGFbIXyDjmR8jyiu+4ynfzr8ENyDOrdrzd5nQU0LLUG+icCYTf
	Rtcn5PAfkFWVXjhmQlmcj3GLb9UyCg++RPVZ5fdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658591212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYHfs0g62+As+ev1A7Mgniqp827bnV8ukZPnIhjg/yc=;
	b=hmRF7PnhmQuV7gtAay3Aw7R4+68A8FlOm2RpVp0HF6fwCeI6CKCT98qYKzvhxa6/
	aG8YswsyxOpcosszvmdUK+A4AxBR1eGzG87kq9SgzpLFczH6C82iYGcG8UIvYW1fAq5
	nK+b2BUxTT8vy8lkzP3t66jbzwY2YFeuXczpEHRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822bbd73ed-ed8575e4-4f23-4633-b56f-c5267b5fc9aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68c1c26bd3a8f76b13cca3662e94d10e8d438145df69d83f519880b8b37cb5c1
Date: Sat, 23 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658591212
