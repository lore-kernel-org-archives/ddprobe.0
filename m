Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790F115BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646809585;
	h=To:Subject:From:Message-Id:Date;
	bh=tV6EuyJCkOGRjEexCzirloqPKKziAdyO2sqSYfc3iSQ=;
	b=Xh4RGY9apwB3lyF1Dj9VQdRtjk4Je4XOJCPdUqjKdl4/1eWW9772r68BCMtyOWZo
	LJjdhBTw4XWEdyf9EOtJ+F5r+EtFQrvVIsx2MxfAcYXvG3Dw8/mU2avNjhJhkWGpwBx
	FUbv5FHyOoY8LUzwNo6cGNRpxxauqg8ySQUjji7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646809585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tV6EuyJCkOGRjEexCzirloqPKKziAdyO2sqSYfc3iSQ=;
	b=a51Aw2HvFkpMutJ696UgcrFvyRhP/i2d6xgQBPICM9nknDfXl/s6iRrrROdI5MBX
	GM9XVWvtqlZAbpDdXvK0MgKMaAP4OLo3UP96nSHYPSYi7pFwJ395MZc0jxPIRciXf3D
	LobAfqAx5UVISU4bR1C7jn8lxeMpRezZVEkznJro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d8014b0-ba64f84f-50d1-4a2b-be38-70348e0e6169-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c6e6af9e45f35cb0012a880a076b343a7065e8e46a01578aced97cb48f63bdd
Date: Wed, 9 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646809584
