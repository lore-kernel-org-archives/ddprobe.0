Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FDA3686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645848684;
	h=To:Subject:From:Message-Id:Date;
	bh=wWHIXwuoHYXqTmU7AuS8X6+SbQfPPEtjDbeTpmr3tqE=;
	b=IVZ+Z6PQkVlwvQT/keoXa2fdN3A0CMORftSeHqD+xhbVwaUXoVH0ePDVLOI1DMzb
	7ssHVfCW5AqmOtV3BVtzuMvDki4J3591IlGOFm0FSpmJKS+ixJIjKg2DgL6Xu8bRac6
	b8kr5/Zfy+6/REYJOQANxVSnwMWN7yfgv7trFnXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645848684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wWHIXwuoHYXqTmU7AuS8X6+SbQfPPEtjDbeTpmr3tqE=;
	b=Y4HKIsZ1kKGz3S/y1rpppMZKKAppi1jsEw56tCHfiQAMZ//LO8q40Ecp21NuhR2u
	IWtqAzubxLYzg09ZLosWx65aahY1RmUcpc0Pj3Z4tMh+/U+4ADKrAgptgZDhpv9poeK
	ATyXBq/28ENMlko1Gk5/SeRWUbvy+yRB2iE2PVgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3439e8cb-c29cce2a-e62d-4de6-ab84-c2470eff1245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88a25ffdbb99ab00cf4ed30fd3d5e9765f20546296f764a6d99ef8665608e01d
Date: Sat, 26 Feb 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645848684
