Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62C31A6836
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778279853; cv=none; b=Y9orILxUEJkcQscLLoA2eZ/WjldDnMFuez9jODLRl0jGYuSqObtAlYtNiRkZnW0B1ksIr+pXxq1wOpVLF6TK5kgY/Q04UUejOHdzLiriqhYugJQfB6wMUW3GR81OxyRHSU+OlVb9hrKgfXeG/w1kbUCPAOb1JsPOjnYMfcUNshs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778279853; c=relaxed/simple;
	bh=inmWJxrk5IsrGMTTZ6YY+jvft8zcz08Mde5aJFDCDZU=;
	h=To:Subject:From:Message-Id:Date; b=G3QAgRGmUESzR0xMhJuv2FbFwN47PLdV+XbJ166rCxouMnh4qCKHjc/r0WC5l/t74BlZmln6o838tAm1zvHSG9wUOQ0RJHEWlmvSEd2p0XlBGsRkqa0VMNDM1JcJF32biQr0cJ47wWGn8H81LuQsykCvQLsAYl8BfPnUTmZKYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKsFv0V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKsFv0V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CECC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778279853;
	bh=inmWJxrk5IsrGMTTZ6YY+jvft8zcz08Mde5aJFDCDZU=;
	h=To:Subject:From:Date:From;
	b=mKsFv0V7enT9jcOFPgKrf6fCb1+PS73EfDZzpqRx+jXJ9GndvnwDT18LI0LgnOSVc
	 oiolsUsl4AS2cyKmgOp+OMyJXnhnEAhuUOl0DyoC7Fdgzp4EBcAn/CRWmM39j9wa2m
	 U9X8qH2zVfoI1ILFt5iDOJCWOl8+EW4+gDLzSQq/DNc3UuY7bXQGfP5EaxQrRMdOND
	 kSb1rZYo+iWVOLASjz4YVrcAHWz/PyxflnSniRTOa66XKVpBbXGLVnfRcJp01X0MZx
	 6/KejFetLMMIFz/om0d9uNRAcSAUvsjpCCnPQJLMb9N+LFKWyasDv9ayS6dtVcT0oW
	 t4XkD7Sugi2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB6CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827985369.2223.15424599165125285819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1015d14b3b71baef297b77cba189bbca234af572a4c68288a839d99932ac45c
Date: Fri, 08 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778279853
