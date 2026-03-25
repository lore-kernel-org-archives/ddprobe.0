Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169D7330D22
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774466694; cv=none; b=eGi/hbq/Ja0n/XPREoCsUZ+Xb/PaqctbeQi/sJnoHKqZHfQKDJFIT7Fhx0iqnAJbjJw9RGIE0G5qf3fDfEgDUHbCQL5nAWO4gbTfBLtXXDugF8xB2W0aS6bDJFdL4hmaOxmVNuoztC8KPdpTe6uVxpx4CPokTlLFwKO+1Fr+fBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774466694; c=relaxed/simple;
	bh=Yg53iiR+T0nrpTHL7VUk9log3pITK7UjSJr2VRSJtL8=;
	h=To:Subject:From:Message-Id:Date; b=uV26C4LzlYerAd4vrERB2BAnvQ59VCvehpyKizEds7jrCXJJ2ZHOGmIDi8EnTtbvcJgj4HbIe79X9X1n/HmEp8YQOjMS5gF9mKVYbnhSi+IQBeNTL1E8tJbEUHgzmc/FZYu3IskxHVgwpj5MBg7Sw5VIsha2Tbl7EqeOTWuNvt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6dRCXze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6dRCXze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61BDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774466693;
	bh=Yg53iiR+T0nrpTHL7VUk9log3pITK7UjSJr2VRSJtL8=;
	h=To:Subject:From:Date:From;
	b=C6dRCXzeDm/Ym4w8rj7eJEtkaKqmQfnDdwcPKmRn4qnpUkOXqlTwzu8qkmJ69AXZr
	 6ffwvHHpsflRtxvlIsITYEwathqU43e12nemzHibIvyLc23oEBkAPFhBbNURKwlJ99
	 x04LGyvzjYCGU3GpvgBnXUXBWFxM0GedBAhyrp2tyQB0PgKaSN3C6DeKH/ngFuwC2R
	 NzyS4FE8458O5zuj6xqK+PER8/pJFqcQFihIZRdyuelnJyEtoOj6j9zDwHmg69rPVQ
	 ASHWm3VncEipdbi0iPFpnquqyVYKRPR+AX7QZRfk/QpxeBoxmaAlZWxHs88Nz2aBZC
	 /5U0FNGJX2NQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB0109C057
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446669361.22934.5563162669567101744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b418ff00e540eec079e2807e2d7b24a7c115d4f83c886df2d9579d6c66ac6306
Date: Wed, 25 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774466693
