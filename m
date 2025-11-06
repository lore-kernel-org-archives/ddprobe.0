Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2725C70D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762403994; cv=none; b=a1AhmDxMmJ86q5aOBd602sEdFyBVFkZtfRnebw7RGYAyyRNSB7gqDD30k/1pKzrrqYqUQqn+W5tN4Bf68CtXC6r18up533DPDYGs+7kiAZQITIGezn3YmzzG83NY7PsibHc3s2KUz09xCzoYTOU3MIgED569hSsW9LN1gfMBC6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762403994; c=relaxed/simple;
	bh=a1NsuEdmtk8S+3nuFy2NrJLhxW626Jshmrzs/X3gC34=;
	h=To:Subject:From:Message-Id:Date; b=VXKQc0N5jeqR8B9RmPx+kAabqTxJuO+PmKnIU1BSGlSHlndA4kQ6QltUWJVxFb+tLJLv4duUVYcsTx0gllb9Fs1dTxHgK7n12f4HX0jZnz4WuAmsQb0SLWSfsRU2GNn7wFUXzU7rUfHeqmTBzbRENT3cUDKoaPh+gmzddtVvp0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj7hgNCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj7hgNCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762403993;
	bh=a1NsuEdmtk8S+3nuFy2NrJLhxW626Jshmrzs/X3gC34=;
	h=To:Subject:From:Date:From;
	b=Cj7hgNCF3Rp++6JMj6viRpgNFUy6a6aKjV1HyKJldWc7mnPx7H6QG1ukYUAftYVrr
	 1M52jZAK0yvkkr4FugHKkiPjWJjuszJujX73siahTUBMWCzCHRQqFaQFZHNpS5ccZ5
	 44v2N7PKPxmoEaBB0KgNl3sgjzF86KEFVHISbqM5dO88kNEM4AtVxPKPp/qljh15uo
	 PyrLwIHeEaGMIyTqDYC2rA8hAUTywYWU38lxbe2jCMPj/NJa9IyzwppsCcjyubWu7D
	 XxBkUdd+KveHMhx6YPDK+6J8XNHKhiWDAhRFkSOZwx+hjCrqGXS1n0sqfR/3Xw81KA
	 Txgf2QoQ43Lzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EED1CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240399361.23964.14490188716104372162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0461c002b436f43b9e0e053e68231a20478e5b88e0c284681d1bb478bd892b
Date: Thu, 06 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762403993
