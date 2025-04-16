Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4783F24BC03
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744845594; cv=none; b=Z/+2VbKpfL5QMPXzwkur4K7sTpxcYPKVlpYOidIELUWNMRpOcAMc37fJhzQA7MCiVEzhBQhdUMLJYjcNpM0ERQlSobmP5GEPmYgIwHqs2oSjnvmMOUfjN9HZum1aLTyW/t87ppukiw5p41HFvcDFOC6o/sR9KBrPqvu7gHZEcNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744845594; c=relaxed/simple;
	bh=c2fDNZFTx+NTcxVVM+RCtr7eeBhh2tQr2u2pp/aDlPM=;
	h=To:Subject:From:Message-Id:Date; b=No5uYCt5ZLdUZnoOBd2jzDysAMGnd+kkVO1nRTveqsBqKjaRph2mjSWdFp5Lz45lY0LTmUeSxCtH4C7cZqf2wBqLxAmDjRLmwmAy1TqM0juf1OCbejMfi3XOv6fXxST/zeW3xMeCKSLqjHfvV9K/qhcY/G5wHn4AAsIkbEHNU6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sONUne3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sONUne3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16ACC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744845593;
	bh=c2fDNZFTx+NTcxVVM+RCtr7eeBhh2tQr2u2pp/aDlPM=;
	h=To:Subject:From:Date:From;
	b=sONUne3WCkNEgYerURPxuh22iQsI45pR7+cjL4ai2m6nKGKCSD0wX67z4jGUkPLxC
	 33JtiCJ/GqLfkWM9+Ifn4P34LfSXdNdvcvLjRxqPgO3ho2E8xHJItiwqYttYDpR4a6
	 badsyRI3xGM2E+GQrGGxqqOJb28VxJArv9+ds6u8d1yEgPEoWX+QNf7J5LO/V4m18o
	 6v/r3pv7iDKljjigLWKxyu2VE+yRWoYpetyS++Gz6t8wF1CUXmQwNOjZIb6bIOCC6W
	 IiTNLSo4OC8m6Jwg2htP2uEn6tQj14vGxspep1qInXMzJbpmYkRfw6brcX7ma+fezx
	 xr+7FSskFoZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987DFC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484559361.20162.9365993927207611576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036ffe52f206f253882f36000c584f1713d3209b7a312adff6861af87f23a995
Date: Wed, 16 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744845593
