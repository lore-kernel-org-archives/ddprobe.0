Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68E913D8B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151394; cv=none; b=fHsWpNpJ3p+cKknBpFL/Q0F/8YR5Fl349DXMMT+6BqfrioUFFPGcz3KRFqoROa0OPk77o0eZXuJ4Gh6RZYLZg6a3KmtlC2xkJ9HRoPPRqK3lsOMU1f+fHDK/8yuLkkIiUIS5mLVq/SuQ/mn0Q8xYXDnB0agfh/s5sRyMICbbfb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151394; c=relaxed/simple;
	bh=Mr+WU+fGGo1OzEd+nnvZGMM0cHCNBrIZsyNZfwE/ulw=;
	h=To:Subject:From:Message-Id:Date; b=PmVf0sGrMdzNzuzxSfOWFyd65qt4N9yBh4w2KLW16RKjw5FHiWkKven0S/+kHVuqX6aKRAHHQy1f8x4LnTwTLKU0BT0uAecBKGzqY/K2uszT2a38BrdiGOZCrYK0GF4ql6RL+3g/kxf+4jexuICq/Ed1JQ575Ya5BxNOzFMMDXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVlhnuUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVlhnuUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CE9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759151393;
	bh=Mr+WU+fGGo1OzEd+nnvZGMM0cHCNBrIZsyNZfwE/ulw=;
	h=To:Subject:From:Date:From;
	b=bVlhnuUREpdBZJm2MebjYkqjRAzpPe1B568ZhqCIw73h4ugU68UGRTYVWYBKIoujS
	 7p07IfazNeJZI/Row+IHoFUTFaALFh7borGsOXNGc6dUPU/dZArRUaOjpAy5I0fQof
	 mZnBRiTbDDztz/GMipij6izCnMP1Wji9CnodeHEs1Q7MNlOw3ceoLfzDzyRR6ZFGDk
	 YwuVDLHMdmVV1LNL2fhmWyigSOUfPqYJN2w3AEcdRAwHla2UmcEfpWT67wkZAGfNBx
	 ZGoJwtDoHfLSrubdPq8NnjIGRIn4OgWyIcURYUZi5GAelP0nY2ya0A1WYxUkFyNk+m
	 xdjgmnJvJoOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C83CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915139361.31383.14087141718606205245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc865e5cb96889f1f35289dac7d609fcc6fb905b200b4a92100e2df674dec207
Date: Mon, 29 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759151393
