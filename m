Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67710A0E
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727593554; cv=none; b=ADWvYwoWALvyj1ccW9aQ33a+8VtgjOkATlns89BwwV94eE8cK/LmcjOOd65M1FYGFVBkh5C9g9ajxeHlSqKQBE4f5WxR2PogKrCaAzm7AmH3v/aKdfvl5iNoiXp7eWzkyEncWN6VHeIZXnb7B7klo1h0m6Bc88m2E61fBQoLMEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727593554; c=relaxed/simple;
	bh=7lxZhoZs3CFPGk8c+dr0F04riUKBvpIWWpY0t+HF3DA=;
	h=To:Subject:From:Message-Id:Date; b=E+CULEvdl9gFeRzEoOlMBPwNuJU3dkBC6LL8MU/2VJVwKxoc/3WAW1Uei4QG1uKmaVi/bMA0puu2dKt0+DTUdUV3LfmhsNjlTIvJeqA8aKDPLwpqXFf5V3THQu1gGKx+Hoi83W2bA8Q/G2BfjRIazEVPunc7xSDG2PaxsC/k+Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXWYmMQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXWYmMQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6B8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727593553;
	bh=7lxZhoZs3CFPGk8c+dr0F04riUKBvpIWWpY0t+HF3DA=;
	h=To:Subject:From:Date:From;
	b=pXWYmMQZt4sOQ9YI7WjBd1hH0P7wjGKII0Y+cd8z70T21RNHQ1QCYZXbEKnfP5mA6
	 OmL/v8CJfZnMF2O6lRL2PIW6rdv8DBiYGM0fmjiDQlS1D/JEpV/8DKzOM6XZk4cbYO
	 Fb/DSOUVf3Eai/bsO+HKhRlBi8FOQZwE4UP2vGO8C0LKsSVrUgJYauCujj0Vs/5H5D
	 MZOAl8/n9ivBNsGGjVYenqKT2n5t6Tsiky4mcaBWk/WogSFiwtyWuozXE6vJkJkugn
	 TTgJ5BMfMArWHqQrz1KuETVmj0pd8XBRvgQz+atg0yBja15dwTUdrpUmEcJQQn0LUu
	 mFQzkSlE+O8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97246CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759355361.28529.17360949743020276543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cff26414e35efabe1955881cffd13c3434c34eddd64767eea4b4639f8fd0ef
Date: Sun, 29 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727593553
