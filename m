Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBC2288D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745780395; cv=none; b=Buzdck56IaFIzDjxhHMvPE7HWo1lzlOQGSZ87xYzW94kC/Ld6xEqdtxirDR2kCdPTFIAugb/o+Yo1Tpf0xDnXIMXEWvKxsZNp/givOcP8crY5QjU834KjzuZ8tHe/5hNu733saVlwTk6YtsZT7oDtdmkImdRKQB4ZDSrlrWvmv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745780395; c=relaxed/simple;
	bh=xI3T+0oGZtQX2UR7Txyb5T7wiKcoy538SiWmHgLG0XM=;
	h=To:Subject:From:Message-Id:Date; b=E0DC77rfefzZK1IYC7QUJ7QbVBd+KqzgrweHGmEb51KyUFnos4p0DQKh4fAJcU1spKcBGYueuYnyUoba1+oFwvLjnSSWVPJyvbNrR4hVPWGAFHx9yODiCYqGBgZilTGLfH6c53k9axlQ3RGx8bEWKTUXk3MiLNyIYpa+VmtMnv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqEOjD6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqEOjD6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745780393;
	bh=xI3T+0oGZtQX2UR7Txyb5T7wiKcoy538SiWmHgLG0XM=;
	h=To:Subject:From:Date:From;
	b=RqEOjD6cwOlu8B5BGo3dcsiCzN9eigWOeWfCxMVXq8u8QusARs4ORVMBEOdPc1oBx
	 zoewDT77fZWYOTt5+hh7y5dY0Cm8ieKdWN9Uxtxcn+5fbRoTbaOIhPBQjdZ/Wvwdsv
	 b4oQBSvlQ7XwuzPZcUUJNsIX1E7vn6OtE10ANc/hXkabjXS3NmIr12v9JFK/I1Piyf
	 YYaa/x4FNZjENjPx/9x4Ip70oW1cs+n1qQR54NDaldPZukK/+UtMPgtVGClq+HedBU
	 KivBI8Z5Ldjxo1QM+2/EAs4yhwF4kshBFQauqcc1ZgJigIj7zvgWyY5nEAMBFyJBlv
	 FDT7QKu1SQvbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BDBC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578039357.23167.15217450785031277887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217fbffc0ee4eb47c16580966b59dcc7abf2da35882e0c281b58b3fe662a5f1d
Date: Sun, 27 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745780393
