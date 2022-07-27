Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79649A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658961652;
	h=To:Subject:From:Message-Id:Date;
	bh=U/faavJzVpa8rx+mGVEgh2u+XB9TvXWTTzhLaldSQO4=;
	b=MaZqXnldFkFMsGzCLVCX7U2reWdMPFKHy/bWYbrAco/1FNrmPNoTKMxbTfHJtqzO
	iOwfUx9VrOL9z4F/oqFM1Xzyg/KKR9Jsavg6ZiVSw2sxE4iJbYFd6IF4LbToaijWVLY
	KYc88ezup6eD4Z8pkuMIWwV1pGQZECv/T4aoVgNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658961652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/faavJzVpa8rx+mGVEgh2u+XB9TvXWTTzhLaldSQO4=;
	b=DZBcWBSbI3v2N9AGKHe/GiUGBpmurJSEBPtUGXnCwvTVEKhf55kuWiUIbaA/APYf
	ww8LfvnfNoukONayd3QOj1/xEZV8oGNtG6KvfDV4oUS8LPmPmScF54qTUOiO2uxmg/d
	yRholDYTwHDXNpSZSCykoYgMD2c/wSmOczZ5MaJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241d1eb60-141ec59a-f03e-49b8-bd85-25f6e75f2034-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1bdec72163b2cdf2b5891607331edb3e44cd21724d96c016491dc187fe16789
Date: Wed, 27 Jul 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658961652
