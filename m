Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59F274B24
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752569994; cv=none; b=JYda/gkhtxljHdnb64huUcjHpDcuoB8j3GqZIYZkrYzFQ3FXPe2aDq7Qj3EMmG3DtsokX2EX7jkkbkmzjWdPiDfQ9aj9fBLHYpkFLY8wz1bvdk9kggh3me6d0gd/uI93ZVS8KIUx2strml9HSIAeZphcOPM7vNnHM1dLDtG/4gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752569994; c=relaxed/simple;
	bh=YZHQvPe4uEV4IHgRjpOmKU9jivW+GGJVZ3t9skEIBhY=;
	h=To:Subject:From:Message-Id:Date; b=bn2bZ7fOxcmK/Ej9VQoBCe4R3B9plGyYRAKe7L5BpqVjJV0nsXrNmJB1PaL7zZ2EvhO7t0j10BPTzQTXe0EhZXrL1m4pBFCAVth0F6nRdLWACvNquSEMsuYBlLlMRgcZGL5FFsdeh+3WWF68q2sF6UhNi/M/HLa3dmoeFEb1x/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C88/X9p4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C88/X9p4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B88C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752569993;
	bh=YZHQvPe4uEV4IHgRjpOmKU9jivW+GGJVZ3t9skEIBhY=;
	h=To:Subject:From:Date:From;
	b=C88/X9p4rtTNbN0yqMLaTzBpzxRfQrGX09DgDX9EUu95XmkzywXrKLfUsEm9sDkBR
	 s2R2qHj0Ja++ZsrdAtbavsoXpnonD1MFBNv/l+v3X5ipHRTWY/8LqJVuI+d0ldJxBE
	 o7q7mitxzTGQfrjymq5bTHXllcWmcXH95gHyKxgCw6FIRoPdZyBRQMw7ns1mYzztAC
	 1o09c5QhGE0XnAapISj6vJfzy+UsTSKXhzoqVx9xYNQWUq+IoenJaiduX0cdXDJSys
	 v97ORvVTji53HA7vogp36lB9ofCaJnoyhIhnt0fXO+ekXOiKRmuw+8Q3rS3j9tOuBi
	 Eo6zmy2yviI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91349C83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256999358.16777.1025827112158403226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee61b4707b028000490d0c10ac1e44df4727635df7551b150375d496b9c2552
Date: Tue, 15 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752569993
