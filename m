Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4254C2475E3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763347914; cv=none; b=Q9Cbc4fM7XVN2O/guqv8hhE9m3opPECq6ivw7B5su0xXMltUUy09gHUJb/cFiBzCu7AtaDvthTRAQm/ytC9agAx41LotxUttwRl/oDUwTZKc9SF/LxPMuztCkziXNfCmQ5OctK0G/cRWEiSxt3rm7vuGWKn75GlXpDCFH5zpD74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763347914; c=relaxed/simple;
	bh=2C1Z9MdrmXBZWfJxMBGEvKp48o6D0xM7NN4t5Nh5wr0=;
	h=To:Subject:From:Message-Id:Date; b=YNUDG3nifOlg2BT3kqWzxh+nhJn0H4eIkIimtubpedvwBwGqxauzuZl41tZUr+qgXfSZy5LrVj58Kz899gFB8YgcDwCbdqQd+Jv1B0ha9BKiw4Evqm4bdzzXMDAobTccczAnNVPMGFAcJRLEnG8E0H2rv4hdJoGtsttENGUAwEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnSSDwml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnSSDwml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763347913;
	bh=2C1Z9MdrmXBZWfJxMBGEvKp48o6D0xM7NN4t5Nh5wr0=;
	h=To:Subject:From:Date:From;
	b=nnSSDwmlvBroiOJkcmuYNarBy4he05WbcZcEMWp/lZ3gwtR/xDFMP4F8wqcCW75l0
	 C+HwKN2bhLW7006etrxcvvHL9lBKm+b7TCJ0ACZDP1D+MuMROH0fZBPSkLq5+UPcOD
	 TQGX8fAkgMzj+ScL8I3g2bzxYfDPZVYpRjFIuDUKluqiTWlBLkbL3HGwCJTNWcgz8u
	 /nzUuJ8J4XQ/JtN4E1rawQiuNBVO5rTobxwsXsRvjmPXPK61M3vHLdOJxS4VcvN018
	 8gH8WWZzm7/+KISDKK6QrgceCixrgAYoejWaHC/jNYGmjQw2atoUYAz+04EwBH+Zn8
	 1P2voYOdyrdPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCCCD4F3E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334791358.22083.10577371095475621495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf935c4f4eee3d2a0247afe25545fc379ce74f3267279952aba497435171faf
Date: Mon, 17 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763347913
