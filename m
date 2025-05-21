Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F82EB10
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747790394; cv=none; b=qXYyt1uDjgKWjNSy3H/E0X/GVZs9DgQBNZ7km9EcUzZzFgaesvnfZTCCbn920+5B3aYIlPV+a+w9R4WLyiEGKarq1GmiSJlLo+XuHeJez2u/gifZliqnnc3D2EJ5agglnskJMk5LqPY2ztTMw97p3ak7mkeorQywOhS8sMuUN/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747790394; c=relaxed/simple;
	bh=9FjQG2VvOWvB3K3vgFqOrtDwj2DcO7YjFwZ4dxQKUgI=;
	h=To:Subject:From:Message-Id:Date; b=DGfo6HSx1luYTi8FfE1jZ9bjLnN2rxuqrKRjxtaBCoXyPGW16UIVGezwwkcVngft21V+ni3tjBSgov2rt6SbewXcwKfH4aKaeFGJ7OLxM6iKYToWkpqE0Tat8cr9QFJ84Quvph83Hp31XjlvpG6tuBTn+doD35MzRcIA6tLnbH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7FqWPnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7FqWPnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3894C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747790393;
	bh=9FjQG2VvOWvB3K3vgFqOrtDwj2DcO7YjFwZ4dxQKUgI=;
	h=To:Subject:From:Date:From;
	b=J7FqWPnkPJZ1fruJcwF0cDNqBKbrDlrUyjFBnqqBkmoIvdi8Ja3lnNc20uVSebkW0
	 Au5YIMLX4k1UPmzB2NmFKsh39TQHvMgjKAq/C1+PgbWWa7UeCBP+nnrI/9tcl1OG32
	 QjpFJEux2eOi/okqPbO6M4mSGJ/kYL29QmK4osHmZ9rEwqRXwnZ9PH39Y24YvDaDzS
	 IBMI5YHLHqmhNNxs7kcD8p+REoUtxmN8kz7npXQ37I59eiC6xn+SodOQtpzfAbEfXT
	 HMsdhnQyzViZ1KKft4GGDMXywzrt2WwInKm/bO2QOZJxRF3aSZLr2v4UVJ/Bv7Ep7n
	 SdysMX8ILD5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F1C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779039357.26990.6757049287213048439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127747b6abe9bf58b5ecca1fefc0c011072943804cc9a865666b2f667780dd4c
Date: Wed, 21 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747790393
