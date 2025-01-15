Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355FE2475C9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736942754; cv=none; b=gR4hiUV3VtwKVxWMdNhTN8SOcpw6eu2Di9ssh5AFlf1LvCxXZSo6Rn23iD34xNe2qoEs0sK2QNFK9ztnbDOm1gMgil9J0R+DJlnwjWg9jcYk87O5nsru0ZVlwCjlAJ7s+aZxc7dYHOmO9+BXDDeWASAzLTcJKcadwjSSCx3FTwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736942754; c=relaxed/simple;
	bh=xUb5wWyTiD1pyPblrl1XfxkjyT5d7DfCm5O28Ej/1UE=;
	h=To:Subject:From:Message-Id:Date; b=BZnxPgEOaO8VmVaEZ4k5zBdOunXlyXBJaKUd3X171QP4VOofKkJYnyoPQOCS1V5gtDv9ZFRk7ggX6eWWdbtHzmvg7KwCafuMq9NWOSYV1qF8f6J91V/kNRogYBb2bz9MhLUgCABZbzfMwi6u1eRUp5RJpaUjLb8wYFt0esMW3ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxbGNw9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxbGNw9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0546C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736942753;
	bh=xUb5wWyTiD1pyPblrl1XfxkjyT5d7DfCm5O28Ej/1UE=;
	h=To:Subject:From:Date:From;
	b=pxbGNw9Kge809eotSGtAIfw6rds3kHVJq+98FpgLLEqRiA8eC8wnUAPd9Thz8DtzY
	 /0QYT+ojCdkP+MT5CR2xPdSW646P7x85x6COFkvOaShhPCLv7jfZcidipE/1X1HUVa
	 xSUntcOkarj/bWgf8UmBNeZ15JVkQ4m8QJ5eFu3GXdeeEXTcVTBAuhjsjwZhoQPON7
	 rEzB8wUlEnVHIVZZFox8w3BvbNqm2Ptumk1iDwDs+taUxNNYfcYgv5J8m4pkct0ime
	 PDtDe2wuPrvCnNMt4IAVN6qkRrAghaINP5VnvhO0XtpwkZZB9ULBKohoiUnluxckqX
	 Oax0yHB5Yox6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9889AC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694275361.27159.9616574001702382709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2926d0c9c307d6492d1d81f7ef1c651aba5e5f80879ac9aa5febc625d4cce3a4
Date: Wed, 15 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736942753
