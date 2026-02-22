Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE653EBF1A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771725894; cv=none; b=kFu3fJ1UhaxmSVEJJGT9xAXN+Hg2vH9quajJfQHsqbJws7sI7dp3wksPAtaVBlDmeQfTKfo/pjwVHVFTYXH2InI6ckjZKPqXq2IJ23mbZvbvz6EQNXzvC3JHls6thzul4j1NxfJGyjj5b1TnRKBuNEJ85unb3LXRtiYmBiGQKVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771725894; c=relaxed/simple;
	bh=rU8hHwZDgEjKKpDoZidlMMj5Xmw4nHJk9AdbEwC0UmE=;
	h=To:Subject:From:Message-Id:Date; b=WI86kcwrO+pzlsZUBH227OW4R34DAoIumhbIiG1bipuAewRaoa+oCNCsp2xUPyiVxkzxpYgLhBL0/3d4bX6jjv1CcBvEGzAD4IpG8MkBs0OCh9YFAFNBxBRFA0ncjQaXMQvGBPYBobHa1GOP6ouxHXlanZ3ngbs1EXIXihZ7V2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv1LDmyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv1LDmyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB580C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771725893;
	bh=rU8hHwZDgEjKKpDoZidlMMj5Xmw4nHJk9AdbEwC0UmE=;
	h=To:Subject:From:Date:From;
	b=Vv1LDmyfMN0iKGAe8vINxetALCJrOLrz+z/XuOyZZQB2qaLkxVsHsSYi6COYCh50G
	 T9ri+oybqdFTCBmqbULqCDugobmIeto/2v2iaZzH2vqOX0S+k6fa9KPREW57gdXSDc
	 uyrVCxVYkc7i65q+YplkamfkUfuprZAYBn582pIXYzurl72KuiS7JpUGG/Et7k7D+V
	 VQFGP+u3Uy4D7vqlNgtP3gK0TEAc0O2lFKqlnr2p94w+eAsiNKNjUEqedrrDH3T8Jj
	 /1AWcBeUoyFeVoUgaJMkDHKcl9aD3glVLBjwQDiXD+R6nWgoVH2Ov2jRcC/tmWusCE
	 Cg69UjBZoV7Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E32C624A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172589360.7452.6981018527793376990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be71e33096677aac4fcd0be5d9d0951c9849d4a857158f27e64e30acc3087fed
Date: Sun, 22 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771725893
