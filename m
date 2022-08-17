Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F57A23A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660707652;
	h=To:Subject:From:Message-Id:Date;
	bh=GJ2MYfEJP7WSnFPxg9OJ5sUOMdLvtC9C2e5ZL7QVsG0=;
	b=YUtQLBasaHtMHgzXvC1eNFJ/C0mABQ44QbbGtauRx86l1YkAxohymnkT/7ftWYao
	H7A3vtdmQEcp1M4HAl4Pz6NJR/j4vrqgGneeLx9RM1/nXgbLNfgqIv++mjEcsfqtmGN
	IZpgbtOU6lXvVSHRI10EuVWt8Zcs/9ThKZsZNvJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660707652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJ2MYfEJP7WSnFPxg9OJ5sUOMdLvtC9C2e5ZL7QVsG0=;
	b=e83K4VlyMWVtSIonjiPGSUAvCHzYNra8SWtyp80L2JNxOgdm6IiJO+8ft3+OptWM
	l5BQYwPqa5FS+4L+KfmsDyhG9k1m0K2JDFVswXm1F55HqhCel97UnTER3gULGHga7LA
	A7D0Y6qtjszKi2yG75ZzOjfsP4GiI2MuqdER812Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9e3c3cf-08d630a5-4d6e-4530-9925-fa7ef18c533a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 099d72a80a1c6ecaaae5918e88f055efb09da0f29e303d5d60dd4e3f40aa5a60
Date: Wed, 17 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660707652
