Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15E299930
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748023194; cv=none; b=hITeMbQHU/+3qguAXuwn5Rpr1bZt5aX/d4QZyT/WCYG1HqDh4uwqVj75EQFgmyzUvAPCqsvf7NFpvyTwMDU/QejK+EBRiKeePEo/X8+qaHfvLpNt0xI7Ado4LnDXY9dmnu3kVRU7V3bdOY2UlFIRs3FmmTf0TYZGTWOBp53sqOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748023194; c=relaxed/simple;
	bh=HOwvjDCxX9tCd2hkeeNACt1loKxEkB9a/zoEbUuNDiU=;
	h=To:Subject:From:Message-Id:Date; b=uMhzPJZ6THNixAKkXh/3fENKThw+8SBwS3apq1IFEOCrGMYwB1iGzTLZ+U6oiZ6DqmaI/AIoj70eVpYzQ9BfUmzbtujbxyDN2ilgRbrv6IJJCn/oKDjdfeXznh76okh5x5NLn6FBGT/TWKwjD4Nso1Y64J5deEzojXEcWyuWtVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYlK2dkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYlK2dkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9666C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748023193;
	bh=HOwvjDCxX9tCd2hkeeNACt1loKxEkB9a/zoEbUuNDiU=;
	h=To:Subject:From:Date:From;
	b=QYlK2dkUcqPaX3CY4eHPsnCIEZzE4j2OY/7LPLFE6d7Ez2vSuhiC+ACEmeR+RA8RE
	 s1P68tVL685tL3UXep/TD9Y2ERFOhvh5nugk1l7N0nyL7qvTBkTv4e23pkQoIt0SHv
	 jZCZZvXS7DeIXAGsmUMwx3lWzaxTX0t045ctpOL1L7Utmz9Nxfa3391rP/ysWvp8oa
	 t7+mtWHKZtSCV78ZxKRoGSHxCj7hFjy1dxzI5k0+8t/tvVVKlVEUPuy9jxiJaAxBn3
	 gN7d+iH7Om5sK/rPgJPDPUll9keMJuIKebahX0sZynO/SHG2h3x9j/265n+P+lSMky
	 WNyCrBJ/PP05g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B01C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802319357.29694.5397013221605594391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0749804bb6b5e7fbc9d1789aea0241769240fe1533aa63dbeafa19941143564
Date: Fri, 23 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748023193
