Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FAF199E89
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766811234; cv=none; b=ixJR4JRxI3+mhB7/hm/rHLLqZwo7WFVdjIhkhNX9oPfTS2x0gZMKH4UAfZunU7cwG5LC4K/SwSMd7rVujBm8uM+PCUsouuOw/AH4z6AVaq+d5P4FP0AI4H2VScVPN/Z7R/5xvUZWznnyNMd1rZY5+FzFLhsQ+9N6Tq6ueJBfpYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766811234; c=relaxed/simple;
	bh=ClRM6O77/wrrOkVGU/9FSIS9B+sx6fFv+TiuJ51ysqk=;
	h=To:Subject:From:Message-Id:Date; b=XDWz9b2PvxVuq9uUDkgqcVZlf5X3pmLpQYHlfsFfj9QeQ5256kCrOltqTUtj+9kdHTQlb07L17UO4Z3eqv/gTkZ4BSgc/WhSY02Vh7f5SYqaCE21YT4HktLthEATf2U8MALm5oaE+pKASoZW8jbwfbRRpjNSu9BDGxJhNYe9suY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYWFY7go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYWFY7go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766811233;
	bh=ClRM6O77/wrrOkVGU/9FSIS9B+sx6fFv+TiuJ51ysqk=;
	h=To:Subject:From:Date:From;
	b=SYWFY7goRmMZfqw0BYXgc2xfmC6AAn1d8rbNdCW74Lmx/MxVnFtYBAq/0r4zl/+B7
	 V75lxGzLzFsDRf1vkJ/+EirGSwmOpiEWuFcrcefT+UjJgGxajCnSzimdlZrr4Igc6s
	 YHqF9lqfShGBNa4stelaCcvpeeCY7KsNHcNp5sCTPsbi5aQd0uHpRrYRZiPmoiNP8K
	 DKhXTMPk7hrpk09F5DtYB4H3YtitroBpu8tWFG1H8CI9Mn4jIgBG9vsew14WBOiP0C
	 4GYDn+n9YYS97BKsRfLcEoUCy89Khm1oacyKYlSE6ZLrjKBKGz7hTZTP48MWRB7KGj
	 PcjG5m9wvCWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BECE8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681123358.28590.6327137190689111052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3b11e944f3ab772f88a092c6136c682aa1f7ee3bef61b6ab1fd2bffca29df6
Date: Sat, 27 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766811233
