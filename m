Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022CA7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650827038;
	h=To:Subject:From:Message-Id:Date;
	bh=QwXHcOFoHnZ06mzxqOC7RK4IyGzhFoz1iGX9IT1uoIE=;
	b=ERm8avZstWqfYacoRv3oJq7B5dhl8fcNcy/oQa/jUIT+X+rkv95H2Qy3sr6BSD+N
	emjKcV0mk3sQ7RBINlk1y7AEgLuIozhzLp3xMoWhHDVVhVmKB2AyU8hdcRZ2GJsUNKm
	echev+5F6cXaU7qZYGgNfxgthvWkvt6n49Js2x8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650827038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwXHcOFoHnZ06mzxqOC7RK4IyGzhFoz1iGX9IT1uoIE=;
	b=hY4b60MwGR6Jhh6OM2/Mw8YZOHqfVTKLtgJITVVjIp73/6AL+hievVAje1F+VMAn
	eHvIfyNOcGOC3zJTywztrGm/lnaeLJwqzfShQQZ9rGLiuQcUiIRHzw4vvNa20Oy2M6U
	+TVj/SJ3u6xH5jTwkI4arvxud6of0d28oAvb7kIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cf58e36-d2216517-6bed-46ce-9ec6-7bb4bcec1445-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92272702e50a8e8ab0b4dec140ed75d419f1d7dbfc6d300f7ff275c990bc4b6d
Date: Sun, 24 Apr 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650827038
