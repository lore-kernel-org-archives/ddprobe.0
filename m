Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA2428E2
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661287253;
	h=To:Subject:From:Message-Id:Date;
	bh=Ib9Lz0sLGGz9SWr9JEKRSg3Ly21XqELWapdKmtiqmfg=;
	b=LjbxCg4r3F2R9srw1obP3DPjwxHU65NBeHgfb8E2DxiGHWnJlBRGxQOqOg3iTWup
	e47GgRq3VuBx2quuCXSSjtyh+Hs+7rlMTrkAgSN8FGxrIdv9gZW8Ui9Z7yr1Hpj0/FX
	DUKDMO632GzCqEJ/NjsfG5APrBegSNxZyEDtWLRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661287253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ib9Lz0sLGGz9SWr9JEKRSg3Ly21XqELWapdKmtiqmfg=;
	b=hjz6evNoRYFuL+1ZeH3M6h6Mfr4pwS+Nh2g5DxsGmCZm2SV/6yn+gUrbYPwrqrKP
	MVUQVSppmqdfKbtACvq1JsEIV/kENpole97paiZDyLqfeqLPptFSeY5K8236PwzGb3X
	opPx4BLBUXLwdYQJCc3yl+ACXskEGQYLVD3ADjrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc6fc250-d04c2d68-4849-493a-bbd5-f0136b1aa869-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1257979127509879d73d47ab9cbd3c7211564c909ebf13e8b0b7d612ce63a721
Date: Tue, 23 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661287252
