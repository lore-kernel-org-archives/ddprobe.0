Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24F93D8122
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784901034; cv=none; b=kPGUL597ouacjG+VuRqyEcQkqPYIH1nYTTenesBBoVMJYURv6lmDaktMk9dgQ9ROzLp22IT2tHxrSV6gakV5zd57GYZUK+Zk/0ygREwfKo9fQT7ICPWpO2VW+lvrId6mA4ZPX2TiyVp17tx5IZIAjNZateR1vIWxAqx/+R2TDR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784901034; c=relaxed/simple;
	bh=JBZ6LnA1E1qVmXQPEjx3cllDPlPa6o/AtC34IXN8Vuw=;
	h=To:Subject:From:Message-Id:Date; b=q6YVgW3HYG6Wfjh6rCc25cjO7Ki7J+1LoWd4skWzYviEIwfq/dwSAUn1iBh2uB0aWQXiQMXrhURH2IwRJEJ57sr7tp+detnlRkHH9GqyHiyKevNidi+NYtCobk8JHmKyxkDQrJAFAWKH7HmHsieWyZWs8KkptVfM6hqABFJGH8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1rO4ykr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1rO4ykr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D059CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784901033;
	bh=JBZ6LnA1E1qVmXQPEjx3cllDPlPa6o/AtC34IXN8Vuw=;
	h=To:Subject:From:Date:From;
	b=s1rO4ykrtwHoE7Sc22302bYM/6cWFQlcJBqrAUqMyBYjN95e7hF2MiaFU8yJIiW/T
	 hKiIQ7Krrn66+tQCV5WXWm0w3eeEqMvT4DhZ8GZ51+CwVMvawT5sQYkHBj4zrzBJhi
	 sQ4cVSq/U7c31FLZ/trc53L6KqQxDA6DBBkJ7yC9rxDbwWWapmQtHlbZ4p/Qonokhf
	 dBbLS7ILci5duGjV5qbMCUcw2r5evO1AP/5GXtWIyFFwWc6ShBty8WtFEaSqo59p4n
	 Rjr2cjhaLpUzPOOVlVKnFI+xaDKH5yyhh+ynjIQqgRFsFGXpavlNMBCnZLGfPLHWf4
	 uDFyHNZ87J36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE42BC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490103368.18213.9157968536050803807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7caedb9b024635da858daa428df0bd8b6316e2745ecd802f374416ead1bbe613
Date: Fri, 24 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784901033
