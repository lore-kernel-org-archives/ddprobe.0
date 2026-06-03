Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214D30567B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780487674; cv=none; b=bao47jSD+st2gbdbxNs9bIH8H1AamkP9kvBZE9dXIC2jOPFVHdlvbk5447olErCnnWT7t/s0L5CXgsVj1CEShl+qul/oVqXiUPaPGH4N3UuPGz7XnqFuS1SpDfIr+tnsaK1z9EjQJOTqGlOFbYMEfQDuzxXRPvlU9VUJDPu8sMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780487674; c=relaxed/simple;
	bh=awtfpdsZUO2yzUPwf+8+mn9SXRpdcdGRLGunWPS9qIc=;
	h=To:Subject:From:Message-Id:Date; b=uw7S+X/Kw/etvD1WCEqREm7GeamaRYbsm8WjHHJEd/Fz/4Ipp1AZSDpMlpNe8iL6pBPj272bMGcdKmJJG/41jzyJ95fXTDkZUiljXWCDKZjtsm3+fQVxuHPnRGkLTB1VaGTL+HNYXE9RPQER0TCIA7EsMZVQjI6BQb8LT9Ang0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2eYnONX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2eYnONX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65EBC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780487673;
	bh=awtfpdsZUO2yzUPwf+8+mn9SXRpdcdGRLGunWPS9qIc=;
	h=To:Subject:From:Date:From;
	b=X2eYnONXJdodZ2h5MoPVBbMeYogeZrHWozVfYfPxOoOZ3lwndwXJz41/PJnGF6rk9
	 uTNipBX7lRr5N6zBZp1JgsfGgwgA2hSQd9RsxY+ybbCB8JscSJrtgX6DG4Hb+gwIMu
	 hukC8LaXbl2bOKZ3aPZ7a9be+mY7RiPm19i/Q9dZ8D48zUJaFfwQBB45mbkF3OzhsU
	 dbJYPtQMcBYdDXEZAoxNr6xoNRqRGp4MEb5iM+BanVqkFz4pVekL2SZZornhFiHsJM
	 I1KXfjiprMpQkVLUl/UJLfTzjDXShOTyYh1iZCpPvFKFvo3Bkr9fBSFhXNWIeW+m2B
	 XXsrY8AED9gkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8691CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048767368.29669.11190476232383205027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1593dfd51caa66ad8db1870d90487506efce13bd9ae39006486789a2cd88b519
Date: Wed, 03 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780487673
