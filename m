Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C9233E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647012985;
	h=To:Subject:From:Message-Id:Date;
	bh=RDfqqDCsmihoqvJXdKtICWgTvxwg2noEB4LHoUjmVg8=;
	b=HFiJCvupAU1uXmkCCiO8UVIS1ghw79i3MAAab7iKjv3v+AIgUyw/gx3mQ74IsPZj
	AEtOX7kEPzffeos5giupuodaAYAte87DxPpaOxP9N7Y0gIpd4Em7uInyzAaND5BJbZQ
	VcAUV4v2fQIbkYFzyyxZ5MtPgSEkC+eMScOiLlSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647012985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RDfqqDCsmihoqvJXdKtICWgTvxwg2noEB4LHoUjmVg8=;
	b=aUoMIoLJxgLJ2r5tLEAMeNuVJLB0Xo/ocnxSTVcY24xv9S/8A+/yf2X2RJB1TlwA
	OLCe7bSlZ1uTIxm/sovXlfe0rrjKUfLY005eu0aOtlwV2u+9qrQIoP/KhtL8x7hhxFD
	+A3KS9SctyaT00/dHAgQl3KE8Yx4j/Ve7gR5LSa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f799fb804-2f9240f7-caf7-4bce-a7da-9bcdd2454b31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaf555e00f1e9119719d79c2fff5b3f2ae28c7b3d8df37c71ad9513e4d27aa17
Date: Fri, 11 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647012984
