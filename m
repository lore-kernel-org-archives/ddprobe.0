Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C4277814
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744223994; cv=none; b=L2SX4KVrGXzKNAjqECJwcirCJZOJhHak4CTe978mOgUtbOBQEk/twkEfaigKGXnpcnrh+tz3rX4HeX9756/jWPEB4edhrmCYeuKNiDnT+7V/8LOpSIz05yq/U92vEHHc3Moi3AsWPSIaG1p6tlkAAmoHOHF9fqEVx2TMRdkfBWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744223994; c=relaxed/simple;
	bh=jAl3rqGfyoc23FiUUNeeC9YNjcFVwxtHp29GBr3aYy0=;
	h=To:Subject:From:Message-Id:Date; b=tNCEJ8bPURO3k8Sz6z/SMttBfW2oQUvCjVAJnmkb1wAISoyz+707ddfN0MH05fQv6dQaf1shi/XhMaq2jIx4Z0zRSNPFo68xVGTvYabWi3pFCKNUL6bsFfsWU2ii3UMTYy3JCWMs6D7hJUmOUWocliRxBaVdYgZUFKsvtx/1wOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohWKHbNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohWKHbNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B97C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744223993;
	bh=jAl3rqGfyoc23FiUUNeeC9YNjcFVwxtHp29GBr3aYy0=;
	h=To:Subject:From:Date:From;
	b=ohWKHbNvZE0sAh5Z585X0XEG/XwktfWd2uaQ8TkVMPQcjopQHM997NRBBPtLmAD47
	 Niw//5z5/vlbwNhZtTONa+6TTOcB3hJYRhbTdYiEo/YRcIvbqUzrVXhN0wpeioGU46
	 si0x6aBHG28HVUbK5IHBlaIc3xqOAWXOFvaAmIFFmFAbrywZSW9loz0F/Nzp8tIVr/
	 WdpGsxgOiB7NmvPIneWzCRvQ3/emN/uiYJzuqMGZMXgQAF5+mTSo/f4kDxcKC6VAf6
	 z9X/3stUHL6UEKlrHDTwvnkiDcVeVy1wDKp4EqO/wnr8qCynULAmpytM6q1M2EC+54
	 LgKWMsQHm9qgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FABCC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422399364.20113.2294611391156899510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44eda59f79fe7909d95f216692399d4133cddc488c5eec5b60e3b8223cb846ec
Date: Wed, 09 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744223993
