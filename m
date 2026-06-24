Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5478D248166
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782304654; cv=none; b=pXTzGam/5CIQjn2DsslvIPc10Rv/+rGhL7Ug2E6K+4HMsdO5a0VfJIsy8kpLLeWiobX+P6vnbW9AqF0Eg4Nf7To6yIZukM5DkmCIB/Q9hB4EV6OW12xsTdKljVmjJOe1aVH8rIuW/+4NloCjpgAoxKSEWpeVOzidOqZ+D4wz/OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782304654; c=relaxed/simple;
	bh=GbPZyQbyI3V/rKqvsmWCYeLIKFNjeAATZYangYrTxDI=;
	h=To:Subject:From:Message-Id:Date; b=kZYLl4WFrA+T9drCwOW/KK13z+NuwvjRqKQVRqHSbijAEUWue1YZAgo0Yq+tHRZtiKKK3gJ4yMsZcgqLph1i7CJT32al8MqfE7wmrbGgDUmkNb0+G4H1tKiHOVZewGmkqjtiKZlwjnNrTUFNZySjaOtrZfrS2Sngz1B7OyWU6HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWS3DwgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWS3DwgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0AFC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782304654;
	bh=GbPZyQbyI3V/rKqvsmWCYeLIKFNjeAATZYangYrTxDI=;
	h=To:Subject:From:Date:From;
	b=KWS3DwgTkUuL7UaUfIJxRtCleoY3m/fVZm8Fcp8gts8RKbtyH0368s6ZEkvmpbHw0
	 F/M7rzluQIj9FVVGwWxZDvOK1drPi6CfV4tBvx4sEpi8j3fQhQfrH89qWUIgkQiFYS
	 wjWsNQvJaKj3vwnJL2luKUAHRq/GvfQu7ZKafaMTPRiIhNN9In7tacG+OYcBwLhUmn
	 Tgo8GSfCDRjeui1tjZxnOwL6K3SbGdU2+8TO9D4XjeOLSN0pByHl7jWe1z7cfhg3K5
	 CHK52X5/GrEuU0dkWzUA7q8DLn+VrEXG2k0TZmp/1gnnmCHX6mLeR9WTNFDLJb6Dca
	 2kSi8zI4w2lEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DE4CDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230465371.12129.748505236923027578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7684d717aa3b0169b1c47799d352473f76eeefb3f91af5aa01ee6ce5a06df3d3
Date: Wed, 24 Jun 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782304653
