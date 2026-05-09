Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4CE3D4133
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778364514; cv=none; b=XtxZtXaWCDdWg2W7q95P6A/LzzwcOIzjrvFm20QVomJcRhIXqiwmC0Wk5woliAaM2OBNIxyKoCk658GbdgmNc/j+h1Oizyxsrmc9hr1/BqfSOZbhLGpcEksnwpAe+DhHAJiUpezxEu7L3qb5RBMxTLPvLiiMFmcVJBpUN0YL0FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778364514; c=relaxed/simple;
	bh=aImlc+hfarqJC3AsQv4+ORu3gMmOy46q0A4s9L9JuY4=;
	h=To:Subject:From:Message-Id:Date; b=tq63/8yoV8KYezQPGvWoMQa8Ra1H3K1NffFi0wnSZ4KTXvDVzUs5Nr8iwYYcNP8Feb36m5MmHZNQSTpwPQIkS9O1I8L3/JfiV4GvTm9B6qEBT5avBUgeOTkbVtc1J63/ieFf4sYdpVA8ZXRcXfpvaqBKJsvKJgG65YELKfgh0fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8ISt3CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8ISt3CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BF27C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778364514;
	bh=aImlc+hfarqJC3AsQv4+ORu3gMmOy46q0A4s9L9JuY4=;
	h=To:Subject:From:Date:From;
	b=o8ISt3CFMxB7EK57f360XKz4goyvIRFxZJFacngmC2N8drC4CwAht09/pUOAro+qn
	 Xea0NedmWHjywOJT33HtPKvDvODm4cpmiYhUNOWFh8UhVvvauiSS6WBi1X72pFhpCe
	 Wj1GcuOpoUAR2yWLEj7Ug7cRLjMQZrI+83NnoKdwR6ThAe2PfjuWg+VTZrzzLvbJcC
	 7oKMZo8kBqP3Rj/pNToxJ4RKpUfr0FecDvOcof6d0qZ8R0tGZKIdcyWIRyBGzH4nXf
	 n+1tRR8I6bbP6DMTrMEHT0hasvINKLMoPj5hhkHld256ib5suasRJEmCd0HPlMdGjj
	 lNfZLGBOgzVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A8CD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836451374.18248.7180649775075884218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc48443694d500d97667591952db9e0705295b27005ee0a80f6023153363274
Date: Sat, 09 May 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778364513
