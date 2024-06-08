Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2F61BDDC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717868843; cv=none; b=eO3d+f4SzPpH4J0oxUbaaiDIf9/i34izIbJlRwcBruo+VgO/KIAFNCg2kHUIXOccU65pmjsVZOcPueeiKHbJ5tqBREp/+/Wxl4sh3aGQ0h/ykMNDtz9boGjTRLqu4Jzg9UJ9QhS7ZMKizPDdR0Ex6SBvpFjplGCepQRrLEUQn/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717868843; c=relaxed/simple;
	bh=CvtkyHugH4EJFuDJ3Em2RwKv2mMZ5HEHp0qOuDtdGQw=;
	h=To:Subject:From:Message-Id:Date; b=KQwQjwgVzisg4fXgqKeRWwRs91S2lBV8ubhGBvAa5n0el3v/tMfvVKBlxHa57Fc+mfoB35vs5gd3Fa6n3uJqYYqv7beZRfhPsO9CKLF4luuBuNAv5ZV5ROONK0UoHt40z7bInQMLl8Vd5NDNzJB4LrLSDC2Eh4GFdt/YsQO4ioM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAM+R3ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAM+R3ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF054C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717868842;
	bh=CvtkyHugH4EJFuDJ3Em2RwKv2mMZ5HEHp0qOuDtdGQw=;
	h=To:Subject:From:Date:From;
	b=dAM+R3ejnxuclcCBrVJcMHxsjkNa6z79lgv0bW9xYVD86lxocDgdbjzevnuVyUhNB
	 gzhdp4e8MxytLzPpn3zC10hRk7UZwjIwf0YXpF8C9841Q3WTyL/ZhGlP7ublp/Uqty
	 WeXumn8BxygprMq6njQseP9EFTSLWEMBKvgQuJywmxS0QPbmH7rFWGMphtOt2MDfwD
	 q2ua5g4MA6Jb6C2sAq36KS/LGtF751iLtofMPtrieHjlUOK5u/6jdlbzHGCwKW1el5
	 oJfN/mBJt/WVoEf3cBLArPkuJKF/VSP04emxonrQEmp0176jm6QicdYtuOd20ewXNO
	 7fq5N2qjSV56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DDFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786884277.29442.10140300474179490225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd12221708e1fbbf895df53210b1f3fc8927260a663651be342c32633915b09
Date: Sat, 08 Jun 2024 17:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717868842
