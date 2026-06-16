Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8EB4218B5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781607994; cv=none; b=aOFPdc0LweOfaP3NDIFfjdIOKkR6jJ3TOI4uOdV6iHnxG+P0L/8lxZa4OefWLVzfC/Utq/YXSY5KaYrxB8g5pPqr7E1r/zyX86PMi9kUCbxXkLQm4OSj4/TgH0xrkFwjEnYhcXzqK+wMlyeDhU5TNzA+awb0xaVmV/HDNbjQ2xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781607994; c=relaxed/simple;
	bh=47M7Z6+/e1V1ZI0zBo4jTssUdSKbMfkvOix1dvQOHv8=;
	h=To:Subject:From:Message-Id:Date; b=n4fZ/rwfXRG/O9M+n2w096KIqxxAqOWdIvb0ouyFpHe8pD2ofhYRsSPDC432V8SgLX1N8tnsEwLEdEZdGu7jJ5aE+pOjCha03BKVgfEsmp1rrRNOf7mf7zWEKo4EvL+1dQ3l4hvh2PPs28c+B9+E4a/uEhTveBrth/h/HrvxdFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5ltHNQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5ltHNQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5154C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781607993;
	bh=47M7Z6+/e1V1ZI0zBo4jTssUdSKbMfkvOix1dvQOHv8=;
	h=To:Subject:From:Date:From;
	b=b5ltHNQdOomgtXWXo96r43Ajhm5oWSzAhtHvS+NW7TpU/+qMcvtncwhOCbXk/V9Py
	 KhFzkSsW8Qr4x989ifynjAc82+9P+nUws4dbrznpM5cWRughUlrgETXqHGNBGAE1v4
	 wunfI8aVRZ6g5Xh9E1/k8PFAswN3V48Aw49V5k+vnR7PoMGNlepfNIvScxwExZ8PEu
	 bZ4G/sn9HH04I5gAM3naVPD3ikaKQD3GLYgrU/wwhQrf4mqOETWB+R+asLiUGO+LEd
	 kW+Hnk3hmkeFnFr6vaJr0IepOpsMxYaHQkXJYQrYfvPR5mHVrhlF/N8pRZB8/OdSUk
	 zlhjwJ/MF5Hww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7429CD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160799374.13167.10022844719228453758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22c0cd3b4aa3f2a6391099c3a9cfbe8dbe0f62d4dffa384118e92eda008f8c6
Date: Tue, 16 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781607993
