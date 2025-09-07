Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BBD1D88D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757228394; cv=none; b=E01cdLvKhssgqDijd90qQZp+OcXYXzKm5+lUWYXxL5QorbgXK1GkQFqGr4Lix9x0MMerGUead3T/RT2VUYqgvIYTsNrTG3hLgPLnZ6ye2e6gEKdCGRWuVp+Tj9kzbqdcWgnBqhva6Z1gxeVYunDMD6/mN2TtD4etPzqDJEPnzyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757228394; c=relaxed/simple;
	bh=nEjnKtkTTKcLAJlziWiMIvWGDpatZrevvKzne/xhgq0=;
	h=To:Subject:From:Message-Id:Date; b=cX4q3NounvFNIQjCME8v/y/pyE9clKMyG843O3yRas6uQQFJN9vbBj8/pyIqa0t/bAq8xYBT2yXUrqVzkZp434L4JqD/Gg3whJ2XilUdqdlXA5uffU8viRl9/ayLVtOnJCRs+6wi//ZKWBLIFeMe/T/aXRMCx4dD9jrOpuL3IQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miUrBmUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miUrBmUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7E3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757228393;
	bh=nEjnKtkTTKcLAJlziWiMIvWGDpatZrevvKzne/xhgq0=;
	h=To:Subject:From:Date:From;
	b=miUrBmUhhiZ8HRSHONo/sK/lRc7MqordVrtSdMNiFjGwSzD41vXlHS/vVl9wgvh5O
	 roqUXeCE39vE/3BeY1P3vjmxBfDaeZ/eTnKNQmmXlAXbYDMubHMotuvqKMPntLOEOq
	 2MjaEIaBtdgK/kbgbm5Sss/6LpIc4KJ6bRdhAtWYsK1IbB/f1GmjGKZnwHQurIATYg
	 jJEvuda8nRRCzstPbiOv9IOhbpkLGf7hqBYLrWu7US30laAHYy/wRgKksNDlSSz1kZ
	 KjH3R52Z8bL0GCf7XCo3e5Te8pi7ttBtyZPygmex5SpSWALFmuaKTdmeesJe3IgO9K
	 LJDO2feXm76oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DED6CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722839357.6883.12878261610172711288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03ef3da4223362540aa72ad49811e27212d0768308c4b4936f368b244f043fc
Date: Sun, 07 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757228393
