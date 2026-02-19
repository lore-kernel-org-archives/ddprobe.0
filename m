Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1347634D39C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771523694; cv=none; b=OO5cX4gAQFc5l+i3o4AatlCWxztFc+AYne8C1d7aZTCNcFM7gYUT2FbsJfnFrlqo3WaMdbJAMRDxFykGr/NhtnIZLtRbKSukOa86by8KplcwZzcZx4PA7JJ+42nL5S6FZQWggiOJFyIy5htX3K2pK5eM2EWQsiR4V5JkAcf5qKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771523694; c=relaxed/simple;
	bh=YCwfaVJwTanDifwB6HyDG3qFQdHCWgl1IvmXvZWwt6U=;
	h=To:Subject:From:Message-Id:Date; b=XaZqUqCy+hIAX2n8t+TDKb0jO78Tctyg19rR9ZtDKfTdM6P9bYyBDKLUPBDF2nh/oajVzTLyhoh5aEbqjNY7tNK/YiY4XbHnGQuF62EQwsbkcrPWt4mFL9mkIxLhlqEHKnXGA+poy5OrHIrFJSBPNovQ3y5RCCHnsnkSTBPPt/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb8ZAJWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb8ZAJWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A436EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771523693;
	bh=YCwfaVJwTanDifwB6HyDG3qFQdHCWgl1IvmXvZWwt6U=;
	h=To:Subject:From:Date:From;
	b=mb8ZAJWLXWD9xaGtjyeF4qGVfTEtdR8NiHn1oN0VWdf4iA2fjaO4kieiCMXma4y1r
	 QvoN/dD9w2NV/1G0kS3La7xn77Q++p1S/oPGfKARvCul25en6Ola7Bd1wuHx4GKjDT
	 ZXpPprsuQAka1TMnSEV/pjKySJwfhmtZmzWoMJ9NqNm2PgvqYtYuGTtgEARPzmlUp4
	 CJ15xTm8ObSsTmGz/N4mfc+ouHB8kkuRQkKAKY2sK2t5L3gP8h1o36VXBVvAN5+VJB
	 koU6pXKG6aoQNJZTTMIwaNnz2ANbPVI3OsMWszV2xGU0Tu3pc2qJkrypVieUnE0DZ0
	 WoHh6JD/aaqBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2E9A055
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152369358.15838.13596269644606993154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e301e1cdf319f878326ad418b300f12b4137132a1c6f8a0bf411a9f27450d3ed
Date: Thu, 19 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771523693
