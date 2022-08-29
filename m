Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44BF53A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7100AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661789452;
	bh=OFdZR0i4g5mBcDJlWu0XravvI3wac5OmjVdgJOZbLec=;
	h=To:Subject:From:Date:From;
	b=AdR1k/m3oGvaNE2kSpmvkmM86Le3JibTrW9v4rlcIaKdUckojs5/zb91gUZxKAy8f
	 8ldxh6g/z8WCl5red7Y9l/ecT/C4U99o1Jyh2FwosMoYr+npGII+XbVT7fgznAAING
	 aSkbqI9rJoqx+yD80FeuI1Mojt0gtJb383npVIBpHfCWSIbeJBe6o2G4+LAeBt0O5s
	 RdgwRmuuRyVu366lYLet9aC2UkUqO1PKrgIdu15SjoDTQM1zdZZzlHU2ZBcH5c/Ayo
	 3hZqJYh+cGDjy+rOJgK/qUIHoYKAK7qa6cKNZXZGH81Sq6oxY3lOLR+6yE1YMLhVCR
	 xTWPCjXksMqYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5393AECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178945233.2247.3914522204147941434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90ecc37596969f1f3e56d6f46a51bd6c98b86c84b62f4b8526ad7c5dbbb03fe
Date: Mon, 29 Aug 2022 16:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661789452
