Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E95B182B7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746916194; cv=none; b=O54+o0LCj4+KidI3s3gj/iIqcxqXuq9gp9VYk5cog+ZE5iEkTZkhVfcLN8c1Mo49YS9yvDqudxIYH5uAzojLgc2o3b9wpdbVE7BNIqMX7pVUkZCLN79EWMATskQnlLXIg6aV9xeiIwTdR3uZqhW5UUyFd4CfOEFUc1jPXlqWfA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746916194; c=relaxed/simple;
	bh=fIEafGFtBlFogHjArlWEUgVegqHkJKdzv4bZ8wTDDOE=;
	h=To:Subject:From:Message-Id:Date; b=J/0C6O6hpcRpbojBIaeF9fk6M44xLv96LjcoumohydvOW5WeAZ+POzCvHf5FY4o0eYbhxK8x7oT29JrTm11TPNUFcE2V22YZO+aSCRCct8q9V0aA0Y5nybg4Nt2l7xAd4pdHCwdG86rI+mO4x4YR7sbjmr9MZs1sf0GvUG6AgCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpgxOQJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpgxOQJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8054C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746916193;
	bh=fIEafGFtBlFogHjArlWEUgVegqHkJKdzv4bZ8wTDDOE=;
	h=To:Subject:From:Date:From;
	b=RpgxOQJXt6IngxvYlKuRMxwe0MEIMXSk5GNKUudiwGi6+b4+b0GfUMKR7BFVO9lGn
	 P5Crts80uPeByp4Y/ALbudofgydN4qSeWapi/oI7BISk9dfeY+axlPcnuOwnjuxCzM
	 JhMjXTsMMFlicp2rRqxwNt4ULFCbI1uy/uzBxp6AJtIkSRmtmMe8ghFxC0SE61x9IR
	 unnr/ST1nv2Gk1JnWvc1VPiZPp95Gbri6wDIKulezJsZm+Klgyp/TpkUQWWSad8mM9
	 GFtdnsZVkK4NKtcTfuIpzUjhRfuEnivCCp18+S19N8QgnGmUiTPkzdwOJ7Rwv0XBmt
	 a1Z8YxZkBhGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399EC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691619357.8360.53590496856608739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81415feb292ca35f1ccb429c5aa7023e561ae1bcf5aa552458843c42a6a1924b
Date: Sat, 10 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746916193
