Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C9238FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645913485;
	h=To:Subject:From:Message-Id:Date;
	bh=BCbaperhpUpYCvNhYLu9/HAxLmuiNh5SG1zkU2RhIQ4=;
	b=ajNgENhDjZtxi0ZFYOo8Rt0m3vsA/zy1yU3uC6Jjcm1Niqw2vGRIoEAiw7zONg9C
	2NgKEbWoPUjpmRrhuDeqS6qOqSEsEADm8w4mNXRpu2WpOuo0XFWHmBNUpoJR6+ySaVT
	CW0Zxdqqeu6hyMevGV3Qz25u/9PXai/naMBkgfq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645913485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCbaperhpUpYCvNhYLu9/HAxLmuiNh5SG1zkU2RhIQ4=;
	b=IlZZBDY7nSR5EqbLAzON6dKI1+DSu4Wp+m4U1U7dH/Fak9AldVe3LA8ajIrMLdu0
	qrg4yxPSnFjs6Ku8xE7ULvr7nP8+3ZVfUnAm5mgF/p4COgsjIQzTKzWhrUZJNGCd2TE
	vjhj00vdI9yFs74H2hP5QGhbSv1cZkTg/Dt0R4ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3816adf1-f4e8f5a8-9161-4a50-8728-4e6e0e53d67f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16a75ff0ef1ac4bf0b82c0a5381692527b1ccada6c65ca99ef4f4361cd41fda3
Date: Sat, 26 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645913484
