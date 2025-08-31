Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CA68F54
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756679994; cv=none; b=XMqc6bnbU6BDbpei8ji4PPmgF0UfXQW7c5fYyv59xM3Y+LU62KzlU48fnc18DZ9phiOJLZsm67dvhOUwKhHXk6snRwNqX2Fl1fjIHZEozPT2NTRt8kyxuAtT7h3MhbLxRAPTyfssqtS1Ff75TYq0DFEDs+I32XWwRpz//ypbhlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756679994; c=relaxed/simple;
	bh=BOiYRk+lhXm3Z/9nQKZYI8jJH4JnJ9ozM620rq7wQPU=;
	h=To:Subject:From:Message-Id:Date; b=UoTr9STjEEq4V+RhDmGQts8P2fv5pkqgiVELaJuajYN9ClhfXjdRH7M32Y5/R97gjGwVbILH5DXrDdl75E0skqqqmd+nOFlWv2iYnxRceXVvL/WA+XA0sUE3uS5ewg0EXZY+x69kN2NnGhbjt83JLtrrxEL501j6ekIbCTo72Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl1xUpCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl1xUpCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5066C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756679993;
	bh=BOiYRk+lhXm3Z/9nQKZYI8jJH4JnJ9ozM620rq7wQPU=;
	h=To:Subject:From:Date:From;
	b=Fl1xUpCuJmeJ/tostOGleH3BKmXbiTYQhLtqjsLnjdKunIFIIqheSsUf9gQU+W3tn
	 yeY6W6cXApX5bNqpjuLtaELrlVKWpNm5dhcjHK1H8fXEBBHJGzc/tUDRXGlGSiscLk
	 TBWe0YhHUq7ZMr/Yiop7rKfzbEEf0msEBeK/rRptAQms73kgBAd6U7o85xLxMNcilf
	 bRmTgVWmZVbJB0uSHgPqz8VLBNij9bZJoz6GD5deBFSfDFejtcgpYfRsdq8DDoiA77
	 4ksrmmb5ux3+CPjSa33nRLvzoOoHqPISiUv8XBYcAa6YkiQBsLGj+TebxqRLCkz/mW
	 HA6Y6QDqK+baQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135BCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667999358.4233.7273125728938226186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0474b320aa98acc8d60a8d99d644281faf2cd965e1f522d7089009ef696cd7
Date: Sun, 31 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756679993
