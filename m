Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2439E3043B2
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771074894; cv=none; b=P5phCJHdM+JtGeWsv17xnzpk374d3cIVnYycpPRlilccNn3rstAPjICkVA0Gq5zVONrg9ihE31Hwi3KoYvEb6Kd9GNgRy/+/lest2oOppemqsmAYDDTw/Fy7fyIghnpoC6zVTMIFZbdwHVCyvDmKa/aObnbSxeE3cfgJ7141a20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771074894; c=relaxed/simple;
	bh=o+gPamokPY+MHm90X7KZqKXuUjVA1ND7dDKECZdRLLA=;
	h=To:Subject:From:Message-Id:Date; b=mDOPFz01HWhOelYj1IXdbvhKps4FS9QH8q/zDgw3kVnOaIDYXF5am8+iuJpY35mmHtRrqE1gvAA8F04uzispZxYlNP3b5BanPTtwe62pVVNSuFKxh0Gwcj+psbcwYGsYWHcw+H6RxFntWGP8F9Y2VGvp6lcqQfmxqLQ5pn12iQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxfkqLQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxfkqLQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1699C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771074893;
	bh=o+gPamokPY+MHm90X7KZqKXuUjVA1ND7dDKECZdRLLA=;
	h=To:Subject:From:Date:From;
	b=CxfkqLQ8sFNgYWvzt49+ukyBSQjLMTzbsHeQTQX7d4z6JZVRT/ThpDwyUbwRP9Li/
	 vk16G9EopMpq7cWJ7gogoPJFr5j2v1vDYnvP/0txSW4UYMzdUD7zzG4oC9IKeZvypc
	 tC8IKyfiDoRroxCbw8DIoWlvcUlq8YbQQPrIsCJmiCFbS/hQcw9H0wyMLeLhcYxl1P
	 S3j2sTL+pwKCCR7vTkOj4S+1mjhDKj3x0NbtQlynTMz1p1pJfoPT7zCZrU/ab6rGwO
	 YflsFTMSokHC/BwDwf6fjKTEeQJexPvunHT7zBJh63DAuHGtX4ys2pkzzf/hLKVofw
	 AV/oLZlNiEiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A009EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107489360.16586.11714744169672293754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a8e7b27ea67b90fc93c6e704eae04e9806206dfc6b6c5c981a9491c10b7a6e
Date: Sat, 14 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771074893
