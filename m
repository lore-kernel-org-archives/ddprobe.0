Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0053F7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653034439;
	h=To:Subject:From:Message-Id:Date;
	bh=xRuGBLsFYNpN4Pkso9bPP5ZdeJL2rqwxLeo05SgfBoQ=;
	b=Akni8VHAvNY5GxZd2y2WcS7VfOrKGLW7rLangBmoI5YG+z2ve8ykNJgKULmvYsg8
	Id6lUkBQ4r8m3CyjBqdBEGQFUdEO4suPOgbQlaQn6sBgn0j+7pyhx+GlbDsQBWPY1cy
	M0asvQdBcDrVi69ioIo5dBhtoBmSYgUClaPsgmnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653034439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xRuGBLsFYNpN4Pkso9bPP5ZdeJL2rqwxLeo05SgfBoQ=;
	b=DE0KoZH2PUF5gJ5S3HahUcZiY44GIVokkdCFTyGiYtKighYFx/Ru6kwRsxwwm+qG
	yxxkTgEDLjOCkYOsYg02U+20V3vk4tq5HjrzlhTrSXxPuPYFLq/5p3wZeLp9LkE137V
	ogaBycjENH6ZgPVNC6I70LJpvFgwhkmTMxDbFb0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e087d26e-1d55341b-d912-4eb8-95bf-bf25db684ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f040bf829d1fd400b552fb6620bac79a1e5046e0dcd11d17aed3d619c5b7ae6
Date: Fri, 20 May 2022 08:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653034439
