Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A722C2360
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790461834; cv=none; b=bIXnn/fLMXUtus0DLj/QdjuLTANtoki0Jk91czGTMPL6fCj44QZ9FZveokmFwNQc9mK2lAMJv8UFhPQuaA6A8E2R7/JXRw/cVcoX4V2ZUebNnsVfPDJNp/NfWYiNbljIEeqCOOivVsvvtqWSfbGjjOGBnlguLe+w3LW2C0BiuJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790461834; c=relaxed/simple;
	bh=S7wTCAHturJZP3rxl8+nW1yPyljSe3zqBwB2jsF54xo=;
	h=To:Subject:From:Message-Id:Date; b=jijcA5ts2cn+MdfeGkaNEiD5VlXcBD0Ox3L1WBmavtjQxtmVkxDPDMUhUPIJbGpVTtUZN9YCOeCjdUxTzwciZigTgIIYSRE0CjEsOoeXHRTD6hM88N/roTWwqCGlMxOlDdp37105LfMG7g3stKBr78cOO/vmFmQZFDyC/w3yDK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6xnMXKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6xnMXKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC09C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790461833;
	bh=S7wTCAHturJZP3rxl8+nW1yPyljSe3zqBwB2jsF54xo=;
	h=To:Subject:From:Date:From;
	b=e6xnMXKhCVcNGIgw62+Z5PzrRtNlAaeYJnzHESr0fHBfloT1PK3mmZhYihXxU7tcP
	 J1uUEUSDCuEg7VKiHfZaUoD2cp7eJabAVAPp67RrexwH6B/nTJ7F7AXJi8YQZzU+QQ
	 U3sckx69XSaZtgyEAL2iSi3HFeyISe1+hPN/DKid9V/NKuqaFiIfWjWcJuy20500ij
	 GUbt7RYgr1Tnig29fXc1tLlecLzGqL9laoWRfFViy/o1F0PDSNQ6JgUJHwU+Qj5Zia
	 a2BtmK9SULLAd9iw6UybAisJfvfyppnxutBkUsznqOM8mFIQiTiSFydX4DiGTLpbOk
	 sr8aguU8a1Fvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3049C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046183369.6253.259751948603922799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c6b56a4eefe15f07dd321090c1095918b7c67e550f66db6dac852489da2157
Date: Sat, 26 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790461833
