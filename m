Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B5B7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 04:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652156819;
	h=To:Subject:From:Message-Id:Date;
	bh=KG3nlXHTzf5BQ3C2NZYUWtozqE9Y+hxxDxxU765sau4=;
	b=drcIhEbCX3qeAVb8Ro+2ZzN8+p4I/F/ePT4DhezmOCFAOcow8jUpDXSN2Ru5VSpw
	TN9bweDcS11kyUO/QpEALuKs9/B4wgrHeMOmazPuTq/9/76VIRA/WgznL9R5AP5VztL
	5zfGBHelerm5j7dC/EnKIi25fjxbbZJGwU8MlgTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652156819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KG3nlXHTzf5BQ3C2NZYUWtozqE9Y+hxxDxxU765sau4=;
	b=UMfzNtBPtSHuxmY0L4oGYhhxAjbBCiMCmJSeUqJSzjf2qp5SsUtO1DImxktejztB
	0TPWmtXPNxMF3c9niGCOVG0F4/uWTrbovQ/Bx2sAPognANPNCyyzwcdQXtJe+BWniYL
	tH2ktyZ+p1OOKEnKES/XzrXfDVbyBOQldpbPt/Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac386784-a22cb8a6-cf96-47e9-b30e-0441545e790f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29cde584d898da1a4deca67fd5c006538309d384bbb192ec00029c64d0d0a1ff
Date: Tue, 10 May 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652156819
