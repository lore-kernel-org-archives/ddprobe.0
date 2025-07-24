Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823291DED40
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753397994; cv=none; b=VhQjiKspgFM2KAQz/DJ21xyFzlB4EUN/7pWcGfcJJSiFonh5Ie0yaVIoYF9VDDlOsXhhOwmFX9c4SdKlA5qVueeFKUggAcw1FQDP+rj3AgPYSG3wCpBmFfXGXBTWyFFh8RwwXQFETK95AsCnNrAw73fSOBTSfbtS32boxX3QnZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753397994; c=relaxed/simple;
	bh=Qhd2Q3JeE0XbaoAhMeOTOB0YKX9DTTN7JKAvPGJ0BD8=;
	h=To:Subject:From:Message-Id:Date; b=f9LSOoMxYV9KA9Jyo6yvGNkBA2KQNHJGM886ZvHBwjYmiKqU77LCkdqIP8vaSFNi6suK6Ik3E1hSyP8zhu0+CK1XHeOMUgTqvCNKnhcW2/zf9Gbv/+AE6yFNZJMjTiA3IzhuMD4z8ONfNBaDc+ByAhkvx/MJ+KpnL4E+NEhOYlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RV0/+ymh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RV0/+ymh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753397993;
	bh=Qhd2Q3JeE0XbaoAhMeOTOB0YKX9DTTN7JKAvPGJ0BD8=;
	h=To:Subject:From:Date:From;
	b=RV0/+ymh3yn3F9RCQ+EF+/e5cuOk51DOECsCYRXLJ5cjSKqYb1sUAdUQPKrPVmCtF
	 KkCy9AdZLic0Pg3W5l0Frqn//SMqxBIHmO2JxLznz9P97Pl6e8COfkQg6H7IWB3Ae2
	 dZlblAoy5uDwWy/ddMTUnM4xE4yzmTclEa5DTdGP0221xoW9X5DKN2EPbw1DKU4xJi
	 55klefcFl5HiJqeXfF+PG+srfRI7gOelC7ckG+scJDxtADMjkerF4XqcQf+4fQzQgl
	 /SrAif4hPRbrq717/EXRqS5ieP+QXEpHzr2US7CYt/XHm5xZs/ZwH4mo2ss3mfGAsr
	 Czw/xwEew4yHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96234C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339799359.21464.16731120222680861801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32172cb530900f482ce5408bf69409d91e0bfbe70bff2e64c104254a908d54b1
Date: Thu, 24 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753397993
