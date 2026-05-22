Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C013624D7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779484354; cv=none; b=q2oSXdGq/pq15sn3tf03LMIk//jnDiYb+OD1gwy0hCdlyLhowS2zHd/ltucGrmMANJ1WZ6i6Scp2Cgo/fMkINwSQj0wtFeu8uw9hmVTnHDdYvfg7svvBUDVMY7HSHt0Ypf4ZBdqSiCKIv5Gq92FWdQHjRa+QDFdmtaEej0MBG6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779484354; c=relaxed/simple;
	bh=nHN9mWkMTPKhbPOb+GdrxXeDV1/eDfz1mfkqFSHZFng=;
	h=To:Subject:From:Message-Id:Date; b=X+5Aki7Fm+pfzshmm3GjmjjSKId2JzvwJ1NQyAYyHYvKHXvwyWoEeTC52mbXb4sXt+07S7KuCMJLRhEF7Kf5GT61Ik954Or6tMKGKWLTMWAWj/ydZSgMv2vnqivOg9hw9eLaHJUejuftCoD4iU2A0KBPwxauzS0pKcBVNVCAXiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tmy6w6OX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmy6w6OX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F6AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779484353;
	bh=nHN9mWkMTPKhbPOb+GdrxXeDV1/eDfz1mfkqFSHZFng=;
	h=To:Subject:From:Date:From;
	b=Tmy6w6OXT6dwww2LXBw0QnWgoZy7NtMBp+TGaz+yGGDuwewTtgklDKWPal98/oJqE
	 Leud/C6ab4I7Egb8sK7r42KWSkhKivNz5WQbSKgH2mUxi21R3QIgKChwBFQoJhNfiK
	 5mnFl5aPY6Woss9uG/PHSjfMsQWTb0cdyZ0ZoRZrnr3taYIvND9A/d7jTXL3wxOPWr
	 XjqdNGTHg8z/M+YjDHY/2YMEIvm5n2b3Ty/9WSrwJVFJqruGr2IejWBfLbs0mnxrlx
	 qPJhhoe/qLZtc9FxsZ9DLkBMUAAu13sr06aZRlyEKewI044czvs82P6W8/givPiH8e
	 7tvi8EQMV6VHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B569ECD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948435369.17491.16756963216922687186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfcccb1050199073abaafc979b65f4112e56f90566f98d28c1b1b1070713d1f
Date: Fri, 22 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779484353
