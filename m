Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5E42F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 16:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651509778;
	h=To:Subject:From:Message-Id:Date;
	bh=j1EgaAQ3fUH3Uz+fx5xICTpbqHcm+qEuR7mOsVgsWD8=;
	b=izrSqrtfXP0H9UfWQqf0QxOWHLc/S9rxcyGAX6MyylnJ7upqWUNUCM3i5uPMPzna
	y57vfXlZIdFaJKyPpIbNMat0ddJ2CNFDyZXPUVBb3eZ3zi0lX1ZqxJ9Od9cHodPW40k
	uKCKkSWehNgtcBKnaRx4B8DXd13aGfTze689lIoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651509778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j1EgaAQ3fUH3Uz+fx5xICTpbqHcm+qEuR7mOsVgsWD8=;
	b=PesLH7I16UbpUGS28aGux2v79Q01ruzovO8r87ZuOZLSPY4DNOwzOQr9kfemCvEW
	zshHxMPu+a1m27225tSqcprq8qrmE8FCiUOaBk7vag/jVgItmVJWIMaDkWhGvVev+Lo
	zW4VOdsNsklnOB7rnULHzRF/YtgcANbM9n1mH/dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085a75767-77e1103f-0010-487b-9099-7c7c2bee2b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6641d7bdd0ddca4165f6527c465bcd5b4df1e545a2533c212f8429d634ba007f
Date: Mon, 2 May 2022 16:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651509778
