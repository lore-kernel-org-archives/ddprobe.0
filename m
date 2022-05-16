Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19EEA9
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 09:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652693879;
	h=To:Subject:From:Message-Id:Date;
	bh=LS9vnw6VyCUeQyyGWQsrZBw4yrbIQE/D0E7I/E8O200=;
	b=O4Il0xirNfEvZ0n6jg4RqfnQCX+783jsSc05pP/fdzFrmfNJaRiCHqtpugsH/ZOc
	K/aJD+wezJ92TlHMnYVtQXXtn6/Bp4OjEUPxeVaKA+xTyAdKDBXp/4s6Uy/G5bZ836Y
	OdLIvs8S7B6GltB3DgWnUIiAVOcoGuJys2ldUMK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652693879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LS9vnw6VyCUeQyyGWQsrZBw4yrbIQE/D0E7I/E8O200=;
	b=kmSVfhqK7Hp+xgVwwdr/0tHiH1CXHqcb310Arq3m6ghCJMLsiwHK746mgn64mLg8
	Yf2NK3kMvsii57DjQT+TyoeWl47uMf2padDRQzjPtLc80kdCU44w/T+7KAbA3ejY1ok
	iv80x2d2nzDbIWNGzlQVLvrzFRecI0l4HapbTUU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc3b4a04-b2677b39-33f3-494d-928e-31ce114dd706-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9b7948e2a1e35c1075e7fd8d856cfccfdbafe5dbefd8ff75d3e60f545744a3
Date: Mon, 16 May 2022 09:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652693879
