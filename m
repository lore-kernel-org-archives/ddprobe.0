Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ACF3D78
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659914452;
	h=To:Subject:From:Message-Id:Date;
	bh=G2KOIAfokeN6e0qml12OI6+Ilyagx2uV1Q42uHHg3ZY=;
	b=IdBkyyHg9812fRcxPJVTsDP8H4olZaRHeAzdVwgt/GDmeaafzqeOPHVdsUGLjbPw
	tVToC0emB25mSLBQN70KJx5VMzS4DLnnwuYPMsG8fmjf0ehRyBHA1hBrBDMj9UmYqYL
	h6ujaNpbvFtOI4Hh3JlNyBq9h7kjgpT+W6v+Vm7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659914452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G2KOIAfokeN6e0qml12OI6+Ilyagx2uV1Q42uHHg3ZY=;
	b=US1xg0zb+m/+mDBBxgJzJ4R1RAqngtzQJybDOPb6w3JURYusKkAfPYyB+/UOTSp8
	4mGI3L5gUhAJa/YuLQzMqfMmg81oxUKPN1Dr/iMX2Isz9yUQd2o0YXdj3dI+rWFLZ/x
	Rlnr6m801jhMWHJW65M5lkv/xQ+Q36Ub3iLbuz6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a9c7e51-fb3e781b-9b22-4bd6-ae1c-c8b6dd0f8684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0ab11028c4c8a4da0de1398aa7aae2bc219157a65c091a14f6b4d38ab0a4cfb
Date: Sun, 7 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659914452
