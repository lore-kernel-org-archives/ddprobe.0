Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4027911712
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751070594; cv=none; b=qvhOLNXGxz84uQM7+2b+4jlB7ZyxNQUFNYm/VkRGMUOL6IytSrEUtKsghuNquA4FbWO+6h8/QGB6GO1zrlyLnA9SdRi1k/45w4JjX8sUh4eqoUvpraYDrKtjKpJIlWCBCjuCI1rcN4sPcvw/PTeF8r+b37X88181gYHDlsQC0A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751070594; c=relaxed/simple;
	bh=fkh4tBcX9V0UtLd2yD4hpFqbO2uzmjjk5WWdxfPwO+w=;
	h=To:Subject:From:Message-Id:Date; b=U6+TIsiddJITGFl2VkP5nePf6zi+dEY4FfjT19wIGCdAytvIBltwq5Ov5tGT9UuJ1W2yFy4rz9x+gGPqENKpTevyQkzhqgRDrN1yNuHwLqYGYNcNTnTYPjXj7SIr4NZ4HbTH7g4I865yTOx9Kjsx8kerAVfPExQULzhlR7zYB80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeV5BWby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeV5BWby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ABCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751070593;
	bh=fkh4tBcX9V0UtLd2yD4hpFqbO2uzmjjk5WWdxfPwO+w=;
	h=To:Subject:From:Date:From;
	b=FeV5BWbyxtiEl1Xq4DEDHpjQ9+NAlAZCrCJPlX4ayGUWyqWQGP9diO+EUe3RFW1Ko
	 EtPV00mkQDQawhyBsU19ay8iLDAN+Q7NYxtHSdZt8X2rZEQURPJpndZnfS/gIg25FZ
	 ZtytICYGcUgH6GiRTVjED59dcXaLdD0Fys2fZk8z2oledfJAWNz9QrI4QRcEiz5zqv
	 pREftOSiir5ETybVl/zyHo1W3bIeeJPU/nI2F7BSFS5ujS7HSMrU7oOsW7mPOxT5Ls
	 Jw+Np+ssaZOVL5RhFZ9TIZg/TgDiNWY+v/9KtThiZCt/dujkgU2F5MSEVk9WPvcKTf
	 qv/2/iSTsC26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D099C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107059361.14594.9743589826747519877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bb27d7c098a86348150461014cb99a100ac11d355ad62a2675920a110a6196
Date: Sat, 28 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751070593
