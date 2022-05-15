Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E915627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 01:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652579279;
	h=To:Subject:From:Message-Id:Date;
	bh=VhSd60R+DaEUXzjYVpLUsX6iawPKUyW+gOSze4bA8DU=;
	b=CyJbuiBoSlx7TAr7PVctrSmKJdNckHB9Ov9AwztQJiY01Bb4z6ySyHB7S+TXufJB
	VjR5KSp6FXEZECIzDXYKlzdQsNd6dE0d2/MRX0Jt23ddvduRcusi/D9b5HoRTByJy+L
	tfXclrrDQAFuAOtelgXpXuhsbNUNIsR2Wi1Wmtqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652579279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VhSd60R+DaEUXzjYVpLUsX6iawPKUyW+gOSze4bA8DU=;
	b=i/wJdOI4x3ra9I431WmW7RCRAtm+hqsGa5GyMKt/QDNv95jIb0sc/y7YuifdngBg
	wtSRaayUx3AgKgZby5wtjRor0vMxtNwPoR9Qjc2E8u4UT86qv650W+EBN6r4DocsL3Q
	qqZTurIPeqqPd1XG6FZl/1D87VGFyI5AiGCktb3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c566a1bc-d43fb4da-8bf5-407b-9159-24d75451ffb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb19df77434505f0a8d9646a9679373905b92ec613ca3d768ed996e515ef6f2
Date: Sun, 15 May 2022 01:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652579279
