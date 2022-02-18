Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A07323F
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645170984;
	h=To:Subject:From:Message-Id:Date;
	bh=vVTRmgqFwy0hLOgXJrrr5VUVJPIuPclT2m03r+wPYX0=;
	b=cNui2/ocO8Rw/P9LjlSXP9qfnMq77vIxbSIDlIt7QoCH1PlStYvWl4Utx8/fJJvT
	s/NDsyEuuHOJsZAr8lUsBeSurA+3PBUdD+OT2LPqt/k/aWtmbT2xyx6aYc6OLn2az0n
	XrmA9+yssOv4z+9d1Dc4KuO1Hv19AfhOTwpOGSzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645170984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVTRmgqFwy0hLOgXJrrr5VUVJPIuPclT2m03r+wPYX0=;
	b=jYC+JPex72gktrXjVwVLTcsZC7AanoAPnaSnrAY7usawf5Nf4eOCc9YKjFGyrjwI
	Cl4OBqhLUELfunmrBBfpMPpPwzbJow+Sg00Fg7/xl7sZCusWfurVFfkkvKCNgKAnlBA
	+tomRE3+qbkYtTbV1uHcUmGB/7VvMTtUXXB+DXn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bd506f9-f50d2755-f09c-43f9-8b9f-3a7bafb64ffb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4523fa45b8626941f6ae387223f4256627748e07c800d17c7451c6970ff08912
Date: Fri, 18 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645170984
