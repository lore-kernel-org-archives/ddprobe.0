Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8B3210
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 16:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654790579;
	h=To:Subject:From:Message-Id:Date;
	bh=sJtpRh/ys0fWdfnmiE0C79XknCM3Se+yXp/Gqw2lss0=;
	b=dJztYwW6Bg7c5j1nmJRSipKMTUpdrFgfpdPx98ACrVlj0Enx9CzuPU0WnT9GifUW
	FEwb+a2kP6jqlCmdVwhRtMIDatFLe2k+ATOsxSvOljpor7GVIWlt89NqxSW9wR1HfFi
	KO2MEb4UhhViSBMgb/tfNKGS2SxNLtKsYoS+Q3lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654790579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sJtpRh/ys0fWdfnmiE0C79XknCM3Se+yXp/Gqw2lss0=;
	b=Bxs9Frxgn32CjE+VPtZjsxNGNe3XAwD/rDx7E5UyVS6V/18C+tcFP4QLwev4/Ygw
	FPMAd4pAl3/T/kLpryL+r7136vnDkg4EHMpyKek5Zo7gouRvqded8KLwKFIpUVIscgc
	Dp3Qs/nowWVD+K+IfET5ClsnYYIOLbpPfrzyMLnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814934642c-7214f6c5-446f-4d4c-a812-96a83d8e4b7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00b6c6b123e1b43cd65816d503902443944ae02d24cbbccf987ada578455cdd4
Date: Thu, 9 Jun 2022 16:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654790579
