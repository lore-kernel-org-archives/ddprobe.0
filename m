Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242931F91C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749284394; cv=none; b=PJfdyyYukEi12g+XVDJslJg0kqWi5jzP+zhgvhjq4GJzGiovsUkzMo+r7X6ZuNEHYM8gim7E0+Le7DJiJIgzm+X8yMD77AqB2xJ8S/vqRH9T0vhsJPZzmnfTmNFILR7iUCAWFmKhFqNo44XN2P5q60INTTu3DnTIhkqJeqLq2wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749284394; c=relaxed/simple;
	bh=BkPV8oDE4P/e9mB6tVvP35PnlyfnQVw4gkLdLNw282s=;
	h=To:Subject:From:Message-Id:Date; b=pzG9k+XHDPm7OqI6wVbQqYwEY0Fnkj0/ndPz2NO+TQa2wP61VCVokg0TyWXhHgInor+UMRBqm6RYFu4tcazpDdxD1oH4PeHt3SbVNNVSFs2kfzS9sidKSM93gAAzZNWLVkqZ2kG018tNjbJg0EgVeStwmMNm05Pl/xj1e/XPH44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZSk0SCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZSk0SCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0148C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749284393;
	bh=BkPV8oDE4P/e9mB6tVvP35PnlyfnQVw4gkLdLNw282s=;
	h=To:Subject:From:Date:From;
	b=VZSk0SChymus305onRQPHsj2UJRdvZ3OhjYty7UibUhtl7iZ8iiQ4HvvW6mM27PoH
	 2BAZeITX+5xf0x1RlVRMhk12Sgl9cOgaANiT327mfkkVcgUzH3AHoiCy3s7QJyz7uF
	 rAQYWgDGUGDa1Qre1K5a+2vmlpEyme4ZMwdIJVd08kvpYQRij582yCfoOeWBzk5tGL
	 YUf0Wfa98Ib8Bv1JjnJP4aKbVzRYrTag3ghIeRGKtuq5+UZc28SZx0a57QxA37TmJp
	 OyuuH1nkfyf6kwTzWxbVSn0t6Jr/KpwawXXgcOxMoW+D4sEKZL6j0ts+FQVEwrclwf
	 dQsgxl9l2d65Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F890C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928439357.17618.14700533684814995450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6792a0942498f1a69342793694fa5dd828883600b0185f94fd0275a4882d5d
Date: Sat, 07 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749284393
