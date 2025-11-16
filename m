Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FC2645
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763288454; cv=none; b=pjeWKy4J+qPbg6SZzu5e/XKtjAFJHjLk7ClTVUoy5sL7PmKwH/IubFF6j63ds3O/b8tPlzz0qOKgGgX1T1E/QUXR9wQjxszCaSmIeDo1kZwovIEj9LHiqEg0MDK5ZtfaXzSDVl6+6jBbyI2ZSK2/HFAyvJtccT7JzgKAceUopCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763288454; c=relaxed/simple;
	bh=KSLuuAXVJKunUlzixp4BD2lBBP7AfBw91S+p9p9s6+A=;
	h=To:Subject:From:Message-Id:Date; b=ciesHGWH32gjAXzCyJymVIOjaKiC+fYHTg6sUv2pdnQriWgohGSaLw4hgZ6xPHV03RDcS2KAopKjnQliregf1lYUozQIRuqKUN29JH7FQy7VqSyiZ/nD5HUT+BnlYI0E/YVCujKdhPkzwXdqfJcfE4yZYdGiy6Yexa3L+Vyo8aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+8jIah8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+8jIah8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21036C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763288454;
	bh=KSLuuAXVJKunUlzixp4BD2lBBP7AfBw91S+p9p9s6+A=;
	h=To:Subject:From:Date:From;
	b=E+8jIah8MTOGMfC5tepFPdvD3waTTI+6PscBsNqy8CsIVqJXTM4XRVZsah0psQ4fR
	 hTyUiVs7vSJAJ85Hz9ggT3lq+UYIje67K0ZfMMyMIzp2PO/u47sdPYsG7I3GR3nhmb
	 RL3qq78gUkbCz2cZBQdH/Gx/W81TJE8dnrr4hUJM8P5CkpKZEGR3CVOx0txhAXKQ/h
	 Pv3Kewilqr6EWgg6PB1Br4Yic1zivxVXZsgs4XDe7Ja20eieF3y4iRVLHLTeNu9ij6
	 WLryQxNAFhleNxIqTBdWFsMumS4AHET/hhGjQE69OgCLSbmP9LEim5CR5t/ByF49yt
	 svOxMtaH/Ylqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B4FCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328845375.18932.5573735641630912338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fc7d5306e2a25241a38dcb5ada79eda767770324592a7bade0b445cd63066e
Date: Sun, 16 Nov 2025 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763288453
