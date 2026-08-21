Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C483CBE86
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787301634; cv=none; b=M4I3lrKODSGq9l+2YNZ74cYX60AYoVqwpfuSWjjPH2Vhv67/rgp0fpVdECTxijPBUFY4mjoQ8UUNXlvtaawdhC5txaiS1iyyqkRDDbu6efWiizg9mK1DjSJLuZaZjIk/q5WHzC2mzVde0MlLpYj4rp/cPQLYvfRfnKHB/qEc6EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787301634; c=relaxed/simple;
	bh=JxACbTrMHoaaRUBZ/dipjqvVNrEjVU/tWTKanHrwPSc=;
	h=To:Subject:From:Message-Id:Date; b=WwhJ+uRUvneyxS2LfVVBrWpT1gICmW+xIgNtG9oGBZkcVe8cXk9QCpHQLeCuq0I/3EoIfuS+Kqi3ruMWjlHAu0tevr/2HsFJveVfRrJ3+ub/FHttyjZ0UkgDJKs5ircDkcSXdznaMH9rYkp7IC1c/NJe2ZqQF7+9FfzsRD2KoZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7NhyFmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7NhyFmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8334C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787301633;
	bh=JxACbTrMHoaaRUBZ/dipjqvVNrEjVU/tWTKanHrwPSc=;
	h=To:Subject:From:Date:From;
	b=s7NhyFmpPNyyNspCZTTNH7SnzNTnoi2tAawT1SEuA5EOaTonC2F/yAPpc3JAdvzBl
	 rRvJlMTFBEmJmK0lezBEdy+pKD5G4qAlbzVuPEpdNFC/gcsw/h/G7KWOVO2LT5w4he
	 QPnHkykszIBdx8VzCxYNgG70a1EZ7Y1DG8Usfn4/TpxZvFcHrke0G5zemqBWXA+OZf
	 hxjlQMBaQTF4Hgl88ytCIKNWnCXgnN8YH4qcXPzKF4wz4v9tXSK9BfsB7G6KYQqft8
	 9WUW7QjFfiPrEsLqHn95DNWUmj4nR1RmI0NusJixGisOb5Re9UpjR2wXJrzlmGFp4G
	 uvqPlQlDm1HKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2649C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730163372.3669.13183398264573373145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744a2848f8b80a91c099f3b775ad9041858a9c6ca4f6bd2fdbe4cd3ca91ccb2c
Date: Fri, 21 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787301633
