Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312667EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660437652;
	h=To:Subject:From:Message-Id:Date;
	bh=rpbQUlQ2yAZPtzo1pgOQyaAfZ00UJ8z6h3teJHd2EW0=;
	b=bWaU4KfYko+erLWd1KoKW9AcgBWh38p1Knq/AwIOqJyknpSgSMDdrmuVFDZdNuI6
	jF+w5jxbBxoKz6SvhSoXZmmBv1H+eEdcg+z6OtBBJRILDmV4syzbrGvs35CKXg7f8/5
	bb+8dFYPQf4mYvze5O+ozNvuSCb6KKvrKNhp+RCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660437652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rpbQUlQ2yAZPtzo1pgOQyaAfZ00UJ8z6h3teJHd2EW0=;
	b=flExaBDvFnasHqbQiW8re74Divc1ryyVvBrFO9eCraZXr6bbN/2+CU2REf2Qyou8
	M+i2YcSmu1MaY45w+szgT5oQD4Al1Ar0ZUz97T3n7rA1NkRKmIqP/P0vPk4CYZYI5aR
	eLm7D7WcHuO76jW2mRU4OuBeE2081biEU4gC9vlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299cbe433-ef228e58-7489-439d-8400-d429312cce34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f528104decde481b075c345f2158fe9a05cf62bb4d47ee5f96e2d192a6d67f6f
Date: Sun, 14 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660437652
