Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A677E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 00:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652832359;
	h=To:Subject:From:Message-Id:Date;
	bh=5B8vw4+xPLNg5T7crNZi99RbbXUHFUjaTv/S1Xy1p10=;
	b=SEwAO+GOwE8pdvxECjupVYt1jyvDLjsZAPiPSSGn1QexLzfxLD3CfCW/Wef4mi2X
	tkBts+7l04zWRFfwsPxOn0SZBt8uHXPMR89f9Dl9XFEGcef59PCtr0gEqPonObh/FFN
	Ll661ZXjD+j0HYVUqcQWP3djUtovXmeY/Tx54Yfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652832359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5B8vw4+xPLNg5T7crNZi99RbbXUHFUjaTv/S1Xy1p10=;
	b=LSKEb+QmZuTNNKRFB2frq64/dL/gVO8pg+8bqML1up+aW/RIf/WUj+bdtVwDKnhx
	x6poHHvHk53qTISG3We3Ee1/Cgcv9kz83r+TpBlrbuugORI8citdrAXgTcMF8GRSAc2
	zQquQsmUxrZbsZwz+CbH6LrqNxeZYkeXIfxaH3Wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d47c53c2-59adade6-2007-43d1-bde8-f6c7784418d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c6bbe070ef9570ea127929690b24e342fc31b2d266f6e9c693ad0218cf6f9d3
Date: Wed, 18 May 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652832359
