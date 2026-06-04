Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F441385D70
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780568674; cv=none; b=ckgx0Ci+O86EUT3QMClvAUbc9Rs/ipYpb0+vwYELD1WBUiOaHm3VFuWvATkwC2CiuVAHZIoFAB9c2ErKo3D0vsITnJ4zQg3YH+to3y/qw1+OsGhnR6akA151PvbMvmeA18Kgtb6Ib6viQ8+jOxxamB932yD9Dz3zmcl1WqlNCu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780568674; c=relaxed/simple;
	bh=QRUYYMKcjAeo+3cYXCi4DR4xm+3Q0G/13202SYHDic0=;
	h=To:Subject:From:Message-Id:Date; b=JPpIeSoA/c64JERGvfi8VEwVUqfTt2uZd56La+kHnAdByXGZzfx3TlTu/zyiP76L1ICwCp/1UIDtzDTU4cOERgyQCnRECjV6NvOuW3HAhWjzADRucl524KiRqqR2O77mcVIAMK8XD3hShh8gAQHtxPDJpnQWPf3nBu69KWmyZ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEqy27oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEqy27oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780568673;
	bh=QRUYYMKcjAeo+3cYXCi4DR4xm+3Q0G/13202SYHDic0=;
	h=To:Subject:From:Date:From;
	b=nEqy27oqBECnvmRWduDeYJExuQSqSuM4cDBydVhveCbSzMLjUaqxzRWWYjXcbeJgx
	 RilSycGtOJ7cAnMz/LDW8MHtKKxeyGviL9D55GK5peQ/Y13ZMaP6EeIit/w0bBv8f7
	 Tq6Ca3oV4rFTWXTXG6X/yVIW2hbgHQQ+D6I7ZFP4dpb1+XuVX82HOsKJ7KRjbk+E8u
	 AyyN5hn/6XKOi7W6Zhy/uys/wp83ggzYqrovd+DKY+9EYAFwMKexTOxiLyoMdTWjQu
	 yYsUBmQl9dYQmDMVeWBvLLkwcj7xknHUrazDG4D8u4mmkYd8LfX1b2llUjC5CY2FIP
	 QJGv0Ae4FfVZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62C6CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056867373.6932.17994499989918234397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbb949d4c0405b72b1aad652540adb1865ec9cde36748f4963f87f854014ca6
Date: Thu, 04 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780568673
