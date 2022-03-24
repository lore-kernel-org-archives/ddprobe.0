Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AB07E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648144438;
	h=To:Subject:From:Message-Id:Date;
	bh=8V4ynEN2OSm4kNoxQkY4k6u16JmU06C2nLY32OW2kO8=;
	b=KAqqWzZ5j8CYoD+NeYe1rVdilXnECd6XRRy/EByosnG+Ez9uApHvKeYauRt4qBjG
	Le5lWRvIfSn6C9TpQWvqosehgVWPVj/VA3gVMcfnv+1I7EP7wmbcEOdqk1I5dyug/Bt
	9FHJ1J0MWztuvBuTXe2OXp8lHuadnUyjLggPuRrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648144438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8V4ynEN2OSm4kNoxQkY4k6u16JmU06C2nLY32OW2kO8=;
	b=M7hXfzhaBonHJXgm+7ntfyqtHvUDV86naDTekLv/3QCPl9oDMwK9S6fx0pLPEQIz
	n6Q9rH+FQo8NzuX0LwoeDrVRoM3WO+9Q+bNm1DbzmK/oAHBYu//b411xU5PlRCxs1MN
	aKknYq89gxv508tIc10/ha8Zz2CafjnyuIABvleg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd105409-5fe4c4f2-9e42-4379-9ee3-2dbb8cf97060-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6440aaf9904b43528f42eb39d74c095230142ac0a5055bc96a5d120d301b441
Date: Thu, 24 Mar 2022 17:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648144438
