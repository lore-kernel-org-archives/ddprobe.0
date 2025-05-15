Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA35263F32
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747333794; cv=none; b=lM3Y8/nTdeeLaXIuP+Q1rc03rlytA+Pdd3j5dlkpWMTqdWidlwPe3RuEva3REaNDG0R+VWvj6xRQtKNeiON66aVw78EZYdANQC7OxvHj/B8bNfacgYKCWzPmJvCkcq8ES8sR3hIfhIxJKRcFdFjpZhaaTVjQBc64H+VSL4h43Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747333794; c=relaxed/simple;
	bh=blmpCZr0WzIXWCdj/faXHZ8VhXlDWqp/0d3NNP4+KWg=;
	h=To:Subject:From:Message-Id:Date; b=l4S51bu93y3QlMixBHqdwF9HAHjeOW18v9L+aFXRNsjkThtpXeT3pqL6DmzGOZJz/1hUxA5EdaNlROx8/LtuJOV5hTTOF+6/FT/+RAms3W6K4B+J9PvF1fDKpYd3jayfMentDkmOQL8NBe6Z2X24LPEF5qYlk3Bt5mLlyQxH294=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdwPgBjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdwPgBjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747333793;
	bh=blmpCZr0WzIXWCdj/faXHZ8VhXlDWqp/0d3NNP4+KWg=;
	h=To:Subject:From:Date:From;
	b=TdwPgBjWdsWqTPVJQDHr1lX1ByYp8q0S7drKxJfcQ5tbkQATqRG/1kvkkrf1lgln9
	 QQpTP6u+WrMfzjz/EHKCzTWiRuXm7GSQq2Q+oI8m78ioLiYd4muO/iwk82vTXGyPxo
	 vUDMm4VDl/1Qm264DvPn+laT/lcWwJZnGy2JqwzUB6seM9+ucEHCAqykOs7v6X0oY/
	 DuAqOlKy3igVN+2pckLOOvi58WzqM90pYEKOxBNk2uqalY/Eq0brsAe/yu6z0o+PXe
	 TdqFZcZjweqFHiuTZzsCNIKA9QTtqaQnXT4MwJMzWCQ2L7cxCapVtAgNdEsoNaS3id
	 DJfZ8zMUOb7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733379357.30231.1546967640148606256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e40570782cebb5934554fc94d098f803803631504fb90d5f2a6740aa763da22
Date: Thu, 15 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747333793
