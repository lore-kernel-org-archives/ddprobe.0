Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F066510E0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 15:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653492239;
	h=To:Subject:From:Message-Id:Date;
	bh=ngcGBAEzIcrnW3pycyjD4o86Idmzfh84/2SNhOV4hNk=;
	b=ER8H3kdK+Y4YEOPIUTZZn2DUt8/sHmJR1Lh1zf4KrwC5VJFm/ZGDwE4w0wj+Ygn1
	jmBUzDjskD6n/M07MnzNrmlOlh4u1vbJ+mPG7Ey+KFgecnQ+du/U1xWAwMAD/yiQA/k
	RihoQR9kt1ek2WvKpBn74EQy1q7I4/k5k1kwZMpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653492239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ngcGBAEzIcrnW3pycyjD4o86Idmzfh84/2SNhOV4hNk=;
	b=Ju7vKhOD+8qyQyCp40rZUHsGMBqUpHsqktdxkf5+b5HCgLA4iZpklLIyd9Ch8RE/
	UTwUh3fb0zgCEMFaWmgMhQG3cz3syTSaPGYZcnSNGbHEWl2cCajrHsxlFya9SgSgwHR
	Se3q+CQI3A/nM6vjdG9RkYd0JXMOVMbYjC4FFTGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbd14bba-650947bc-3810-4524-aead-181925843b0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2f3ac2c2b227e2bc4ea6495e1b983baffaa92c7fb2a9e745a48ffc67485a1b1
Date: Wed, 25 May 2022 15:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653492239
