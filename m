Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD0810F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659761452;
	h=To:Subject:From:Message-Id:Date;
	bh=aMnxmXD0tTPn1PbdLvbeIqq9GmTLtb+G0Ql9BAm1uI0=;
	b=EClz1FsHuj9ATwvbjPsjnejtvKVRrBVHUd+jTlhmUobJi4U4b/kaHylddbIiEgsZ
	SXmiA43km5MWp8nEHdm1Do/TyouG/j5rJNghH/5dyWaIl9AY/VZ4lPS3hW6m+IHfpiG
	dCskXvQPCnJgnanB8EV1rQthCuSsVZpfa41wPy6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659761452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMnxmXD0tTPn1PbdLvbeIqq9GmTLtb+G0Ql9BAm1uI0=;
	b=h2Hu7lon3Pek8GRYVYtme23Ekl2pAWT1AYjHOhOCONo+i7dIzuBQyJuXR8WL6kUF
	nxywV+gAdZnCaalL08XkgQWYOjSKAQ1sEUto2k6AIy+TV9aUJ0ZkkSgAlGy1jpZZuL5
	Yf+x3O7m31eK41NZpsCSqlygiMeIKvQ0ZSYJvAQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182717de644-89e583a9-040f-4fd7-96db-129d35cdaf90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76b87972763c63dc83630d45770def5d6f69d88d65e6b12646d3947b28d09719
Date: Sat, 6 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659761452
