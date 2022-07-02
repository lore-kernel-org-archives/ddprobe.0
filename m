Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2775441B
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656797812;
	h=To:Subject:From:Message-Id:Date;
	bh=wZzRN468w47iwXxopNQTYEMGezJIDG4l5VF94hAKsXU=;
	b=lXj5mrvvlKBSsRX8AEa7fSxi26PmjQU47GJXPBv/CYNbRT8d7QeKfvKidS8k6n4w
	lYdY7A3+vdbJ6fPx6x3MqnmCJVupIyf2r097/U5iLKihHKLE/bYKVaBL99ijCsaGeY6
	Gfh33s/T6QqHVVncbc+Ys3Sl/YFrgsT2YIZTpGX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656797812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZzRN468w47iwXxopNQTYEMGezJIDG4l5VF94hAKsXU=;
	b=Eb3UKwzhKWGKH3szssS4h3mbOcsTRGCoXIe7Pm3jYlztngaewnC5RElF1V0RwWUf
	QBKV2jXBsiW+rtQAADy0LhK/UB2hItFuqQSO/89Tkyu1cl/HQaCLCAMx2qommkLfrTc
	fM4vux+5EDIXlBuvfjcWmcgEaWy9D0MOioYyq1ec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0d85649-341ab30b-e641-464e-92b5-08425d1c6a78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 442078e397ef58324d9873e70e38f655ed18d332888d96832709efcda6b65a7b
Date: Sat, 2 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656797812
