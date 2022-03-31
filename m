Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E15620
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648715459;
	h=To:Subject:From:Message-Id:Date;
	bh=7wfsKVpQNuUij/nhXvr39bHc+Tsm3+AITdrf6cfKORY=;
	b=OHcvS6lDiFzhl36bKHfyCWJaCZ0NsnnPCEvgFAQyORgAEapG4RnKli2PnSqPn7yb
	+w1x4CxZ9k16XJOvUHLpqRdhdCbhaJjuVs4/EGSm4vGnWNgFyhnarPHVc70cFKQ3Sk4
	ZxfRYFB6wu5I04jpx3hs2s3dGxB0FNJEPb7M8QbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648715459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7wfsKVpQNuUij/nhXvr39bHc+Tsm3+AITdrf6cfKORY=;
	b=T1jTI5EGmIfhG3KlAeULmWY53Qmk4fblVM2LZ7xAj01OwP9TAYe3385mTPaJPX5N
	5my9kL5ya08WDgNGQIkgL29d4yxrjQvL1NbDZzTY5n6KhYHIioChLLm5qnvRfMPkEg2
	E+gTGdpyKHjxKMhtiMT1aahb230yWFLiE8F8muW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf19670a-2854e92d-306e-4cfd-8f81-2d241aba4ff3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f76d23b82bccdd3374efdd54356fd1f3170fb03365b5b492a6638a401104bfde
Date: Thu, 31 Mar 2022 08:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648715458
