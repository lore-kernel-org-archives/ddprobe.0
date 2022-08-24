Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460FC7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661352652;
	h=To:Subject:From:Message-Id:Date;
	bh=LuV82CrveNcsLuM+WPyPWU3YGkdhrd/ZBTeK/KcuHxs=;
	b=ZR3EAg+bQuk5feL04t0WmmyVf1nbYL6k5Em4sPnN/BGk4G4+OEONt+RG4+MkIXcU
	I3iD8pgCnFlUxDRx+IVK67pGQK1TWXiKAae0rZzxMJJgcfGYkvdlJlV9G8FSDO8iYcb
	v/AJwaeZzqIREOdPdMFVjpLVeMNsE+PemZhqGvzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661352652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LuV82CrveNcsLuM+WPyPWU3YGkdhrd/ZBTeK/KcuHxs=;
	b=Xj7hfDnnoDBnHHB9bQT63aqmg/jcWLGZxgSCFcLvdR4Zuy53nELmJRF42aZlr3T2
	YNh/tOYnAB02P4jLiiwmmgxy7lsQgVI8OyvPWdLGABZ3b0VxuGZCVf/33wqQYebrYAc
	eLR8Qbnmdt+vFVnrVEfqmfvH2PBnDRoR5v0x2UuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d055af2d-10e38cee-af25-4576-9e8f-d0965bcbeaf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc058accd9a6addff40681bab5298fe69110ca50f9f5f806a1d14cb97d205ad6
Date: Wed, 24 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661352652
