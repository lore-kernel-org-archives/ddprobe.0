Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BE9364A5
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712409497; cv=none; b=bVSj+u1wwfqlVNQYgXB+Vz/Et69uEU5BPcYDvLtHelgCbt0IbibE9JkPfi0mCma0R1gL8sXX107n3HSUq3nfrQdSs/Qsl2Bc8lW/nAAWGpq+TeSQePW8HnE5qVZawZaWB2RJ8yhVJLUhWw3vect+iL6jD5Pa+mYvnPnkfwgSCus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712409497; c=relaxed/simple;
	bh=8cZOtEoIansLcXNEU5gTPJtOfI77TKlsQGyvJYPkER4=;
	h=To:Subject:From:Message-Id:Date; b=R/hwBcQnQtQzm7OUwrtWLF6zRXKDkbXy50jSq63473fZPVzCX1DRYY5sXlCT5x5dgjZZu7NVor7VO6f8tqsI7Bx8RWfH0ReE0FDgyArc9mUfll7tEGV5m5zLzyQDJl2AZr5u8WPciF1JGMCqT28ol5IXa8VD/KRy+IKhfqCr/LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLR1at27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLR1at27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B7FC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712409496;
	bh=8cZOtEoIansLcXNEU5gTPJtOfI77TKlsQGyvJYPkER4=;
	h=To:Subject:From:Date:From;
	b=hLR1at27KgvRmQ38gIcKRUF2zAfdUenvcL5rfh0ZNz+K/GQpT0ba+h5yQPfkhbJ43
	 RZHa4UlNoN/8oKdgNqigoDEiWfGcV1cYcx5iHCN5Jb3yVk55Ak4iC9cc37Xxa9B5cW
	 8dz36SxpIlp0uThK1OsvO3rFIb5IxJkvXlYcEe5V3TzUC4RGVmQoatsvBT1GvjpSzB
	 +Tz5jwICnR5W36eFsQJKLkj1HTWUjQB3mowa43neRX6hxHSd7LUOVDCDM5ujmYGGLd
	 2P6n2k+smhSof9WCsKWOjWWslAzngzUWbtiayEWqU+VGpy/6xvXvQpJYVi22hr2J/w
	 JPRMLp9nt6GWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B50C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240949636.28020.6951930798682805795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552b301cbf9d7c4b88c58b1333a042d7a43b8d7d35bdd3a514a5335cbcc37722
Date: Sat, 06 Apr 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712409496
