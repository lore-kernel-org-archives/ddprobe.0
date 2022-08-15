Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DE94C9D
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660594252;
	h=To:Subject:From:Message-Id:Date;
	bh=bjhUDw1F0F1rMpnqUNQZgofc0CzeNX1RMascte0zN+Q=;
	b=UGj706MRvEyb9aXBZSkzpj1hsk8q+fj+8nPykEMfoTOG2biFfyBums5UdY1h7qdY
	EKHkz/sDH7/dV1lr7Rv9jv7FQKRv9lmTu9Bzi74kHtMe3hkspso8vaMAamrvme6t5Up
	uJBF+BOGv1hnzcEq3hpw7nntwsgw0RrXQ73fnn+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660594252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bjhUDw1F0F1rMpnqUNQZgofc0CzeNX1RMascte0zN+Q=;
	b=jS2ovXyFo4YUpI+rByevEpKnqvH2ul9QgWc3nsh1+dT/WkSPinRYrz7DaEnJQzO4
	MhPOsvbMN/lK1WX/tTjvYRMNDBOOMn6xXW9R2P+dybLOPxiI3LF3pRaJuSOzwTnSEbP
	EDlRbP0uHC+bYYpv3iYGO9hUStRDVXqCosygSJyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3216af7-2f133b9e-2d0c-46a7-aa7d-37a421d1d67c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3d31799596789dcff5d688af44d7c81e79bef5546e3bb215b16dac1d6ebf7fc
Date: Mon, 15 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660594252
