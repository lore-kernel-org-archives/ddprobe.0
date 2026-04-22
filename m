Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E9538238F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776875854; cv=none; b=GnKfgW8DGHgltkwe5MWS54cqqx6GznKFTqRsUg2vtZIUBNYaHrSgJtuQHuKQZXeRIVTUe1iGihoiV02NEdUIqjM7DVGSbzDrD2l0S2rqKOJYKPgCbafpAJFCNbMyCZcuaYTzZ6Z7m2AogZFhlcsyxVwVcFBf4SzirW0ckZm+5H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776875854; c=relaxed/simple;
	bh=oduX2A3x2+VuQ4w5NrRJsMhaLLGQ8VovbXLnAJdTCFI=;
	h=To:Subject:From:Message-Id:Date; b=m3zYw3rrmHRICRAp3IVp9Nurn4F3Yi3DnuzOIreSoh1cwIrCu6jGZZG361GjmOf/Yrhs85kpLHx1dsNZdRE2h/OVM66g+NCy3BKU1FyW7UtzD9TKyk4obzMhPGrKLiewkqAKTvwdWFsVrR9hCfWzRVP1DeZxmrmBp+BFnhSyPDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ik0QCeT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ik0QCeT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBADAC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776875853;
	bh=oduX2A3x2+VuQ4w5NrRJsMhaLLGQ8VovbXLnAJdTCFI=;
	h=To:Subject:From:Date:From;
	b=ik0QCeT3iGzSxYyf+0Cxpkme1iO77Mb0ZJ6xwIkLoBdiNmNGtzZl8Q3mRaNfVh+W9
	 QOmPl/+Yq8FG01qi59TcpkxBIBb7/jn4r4fQuOoVCyD7OaqV9Y4Vulx6yv15FEvRmx
	 +Xuwj5m7Lp+8BTFMxipTqz2pFILrH+5ysMIzSep+2P19rqV5Wfoo7uTfEfU3qvPjLr
	 N8VLRTkop8tRlxiZREvv7Iw2yzO1ygwHqsSfXwCZjQzkbj1RjE0jU97Ckuiz2GaEK5
	 dCth1BgI+mzs+37JIYLtGNzhwUZreX6ITJ5Ip82pTi5pRv6zpQ8HQto/bEmWyyRim4
	 +jNkg1ijO85gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA235FA1FD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687585368.20999.6806362961817618711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6046c45f6a100de97feea696f13a636762183dfb1df113d7622e8f71df943da2
Date: Wed, 22 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776875853
