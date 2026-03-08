Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1736E2571C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772978094; cv=none; b=EfZsKAN2SbCfhWQQROz9LC0uHJyYQM0DygC9fWUcAPztFZNW1na0usPCQsccUfnMDS7UAaayozltzZtfYw6OKPSmSuxBCggarXSbuJBzjcMjjOXriCCd2pcSd8gnWcvkuUPwTN+q5Schbeo6x7/SLiAREGO0PScBuY9FWnBK0t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772978094; c=relaxed/simple;
	bh=JUvkALI5y5drPUHTqFri0WXbVHDIjhlBKSebDwjlLYY=;
	h=To:Subject:From:Message-Id:Date; b=IZ5f+p2GOc3aMXvvwwkig0y94exGM0xBfU7h7Zwj876GS1fbgmKsiXdrJFGdX2ZsVortiCr3b5pJ2ezOqq80zKzZtiyFgdSgkxPD1vE8auPsIz6ajwIHQTEiVLAu/a/8uuJwC3hbu8dgbFaafIv2CDjI6Bq5UPYyYntt7a9gmBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFyWIs7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFyWIs7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3983C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772978093;
	bh=JUvkALI5y5drPUHTqFri0WXbVHDIjhlBKSebDwjlLYY=;
	h=To:Subject:From:Date:From;
	b=IFyWIs7y0OwwAZlssv8VcLSKJ1XfFR3JB/HDoljh7L5zIkiJ9n5cAVKJ2pYI/X1x3
	 n2MpgErtoh0p4zNyGtyliiw9bfvgEKWEc/VqMYUp8VW6/18v2Bv1YdMthhI7Lus1+W
	 o4H/V0DQLEZeavnT2PkH4F1Pa5q6p9Qqz6IztStl4K8wq3jdiBFpumA8PoBmTreRr+
	 utHOXL8v7AKItI0KUuFEIiGskOf6a1HugBQOGjksjDAwromu4WLqo1zLiNA3G0WDEU
	 5O3YMb9Tzqkl5CgXUt6bNxJFh9r4Agt2KGt9gsHsM1Cb2ZhSCp7e23pAjGxPtsW87s
	 pB26P2hl3shtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1873F55139
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297809362.23356.6257016173207872748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951571f5657e74d29be44c84b9b4bc773f37b60932733efeb7b375afae47fe3a
Date: Sun, 08 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772978093
