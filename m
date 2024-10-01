Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFE328EE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727742354; cv=none; b=ozSuA4cbYSeM9//cuDkhftDJgpXbHaPHlOSeFL552L7UGcIN0jSasaCdxiXS0IZ+kHHCZmo+a+NhJ3MpGbAVWZnFmJFft1TJuLaNTMGJh2r4XcZy0Lr28F4FtMSlFxvy8icKNrOqJhzGUDEt8baKa+HyS0Hkan/bK/bon+J8zeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727742354; c=relaxed/simple;
	bh=/vVSSjZuRS67HNbU9AoqRdCMTf6S/kjN+H4nXKR3Ehw=;
	h=To:Subject:From:Message-Id:Date; b=a8JQQMKu+6tSOveiNzGYUJo6TtztEUWywxEHscBGQYy3LbKA1wxPQYmilI231XR0NPUXxGKN9A+D0gTnAxKx9qM+cgS0n3HWbsMljkqRU3XpWOBCdoJW9Si1Wsj8GvlN6qcZ0UqVm8mCfridHfND6566CYLP/LJvc2zMcgPQENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyVUK/FS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyVUK/FS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C3C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727742353;
	bh=/vVSSjZuRS67HNbU9AoqRdCMTf6S/kjN+H4nXKR3Ehw=;
	h=To:Subject:From:Date:From;
	b=NyVUK/FSXbUPv3X0hQKXpW0MELCw/p8EOVBCr4QfYM5LNxcgvTbXVSKambMkL/xKF
	 adhxHTb7WcO9mNp6WxnLMvovGp3fnSAcroama9Jm1xWL8zrCCceupPbuV3OhpSYFwv
	 nYF+7apIA3UoajU0IbOmzpADNx1S/5k5xrq9EEklFbk57gVrs2HL0XTWDMk5F/Qm9J
	 R+l9bFUvwmbaIn+bO/hg+NTxoJbwJWZYbj+r2HMOWIUNsJuOeMRO+vL9yUT3s/lPI9
	 t3JKTNOQ64oYXu+sjf+izg19cHBj3XEF6kw+QcWatlR1iLqj6+/BhCKetPZ77YUzRi
	 L379gwKDAHUPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE5CEB2CD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774235361.5891.9976593760363650360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc75786db941bd1adabbba60ea4ab32608bc4ac69f1aece062000b6696cc4b02
Date: Tue, 01 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727742353
