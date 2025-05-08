Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D1D172BD5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746745194; cv=none; b=cEVE1mI1dFPNqZU21qrNHELzsgufC4k9u11hTsxBM/g/pdf2XjiXpRNqsz80Gw+sH/UwdTHYCTsEVU/srde4+TO9z9WXxr4v2tve4c5ZPhhOW0K6hhZIypfQh3MMgzm835xrmzMif+0yfdrIoFmJ6QAa7brkhBx1/7fwueVRxco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746745194; c=relaxed/simple;
	bh=J0HkREhkLTg27+SiuykF9u22yKWe95ydKuSy1VWM2jw=;
	h=To:Subject:From:Message-Id:Date; b=ataxqoy+EM9yGVjpIJNWzU9vsDDqdYZ6prAsGKs6vXVj2uAqA7kSJdokvukV1YSf1Rqsiqb8bgFCb798Oa3e1yo76iI3ho7gXMRIYtICjRsODc962BVM0IGix/0FG9zycjZOibZbsiGj6NbxR0x8dDHTVA6XHNhQV+V8EMfPMrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQoAJ+No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQoAJ+No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746745193;
	bh=J0HkREhkLTg27+SiuykF9u22yKWe95ydKuSy1VWM2jw=;
	h=To:Subject:From:Date:From;
	b=MQoAJ+No9LgsvJZpHYZKUQ7FqdlldofA2QY+zbquAXQU9o1LFmmHT4r1F3jw3V3c/
	 obdV4aN+tFwfpGlfnzeuY3EzOWdtu66EwhRbJwNoy7oEYhiPpjFo2iG9EoTfIbJGmI
	 ROwO8fuaHOu6JkkS70r+YYSgc4nGEYiTgUmFl4XPYccFWugjo0ILcO/4XsVZtBod/u
	 sebzWwc3cgRyLYT0qCnkzWZTPPMH2ul7iM2/fUbtyQh0rQoWo7Dm4/1hv7qBYtgVyH
	 x8d+eJkNeKJH8GArGiHd1TK/u81/4tCOCQj0dQTY6xIIxxFWW+E88FXFSKZpo3lmX7
	 gaDFKuEE603kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA3C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674519357.22238.1465902953390523729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7465efa6b447dc08c88d194246c2388638e394450c6b4cced54b201cc5099864
Date: Thu, 08 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746745193
