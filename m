Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EF97E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 05:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648357558;
	h=To:Subject:From:Message-Id:Date;
	bh=4E8vo9ImjPvydaDVg2gvA6fn+2o4ESlicBgM8z/AO/c=;
	b=XiAWQslApyYrtSGZr/g8ZLBysodKpYEZhLYou/e0OLvg0hNAWA4/S+HFSb2oomD2
	4c2tuPXwI8CfV2PkAE1c6DQvZYF8miG+J6Lev0gKNle4BnxnEXvYyfcK/qkFong1Cty
	028SOFyMmqu/Ik8O2r0tsWMofPsXzrXOz76pXk8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648357558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4E8vo9ImjPvydaDVg2gvA6fn+2o4ESlicBgM8z/AO/c=;
	b=SO3kEwhLsLv0bSlM47iJNWHMSG1Q2NFwy9tR/SCNEdcZanRjIyav/4FAh8xVF0si
	Huway780hdN1ibpjIh6gtL2Z5YmNg1weCuRoUXdPDpjbPEDGtQ/ThcTYPnrRs6hKlT5
	2pEBXqpLegVCG1bha96anXT/Seveu2HCRXabeOw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9c44829-710c9500-015f-49bc-9821-6401d3c67268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdd4b9e5f64a831996518339fd16f5469d5460051a5e194ad3715ee2da59db85
Date: Sun, 27 Mar 2022 05:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648357558
