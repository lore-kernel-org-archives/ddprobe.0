Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400144CF37
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768922634; cv=none; b=obLFJPmGKNe+M/y7S3xS3uhjvFgj3j8J4r9GVSFdt/sjUhysnzMXTNkanLHwJD7/XhpD8suP4teiCRLI05oim5ntibVd/WJNu4Jei4sNai8H5odHXQRqrRiTOxG9RijZbKzwchADxmbqArBrbOWs98H0hJfqgtxPDJKmG11w00E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768922634; c=relaxed/simple;
	bh=XyIXiku/1BWw/8nQAHkyAKUU/6SEPvvF5aEztA/XDkk=;
	h=To:Subject:From:Message-Id:Date; b=ImJt+YDaSkfFCZkZtlErkxMhiUxTwO+g0YbAxSGh8zzDei9uamFkUHAi7QEgIPBF4I0vaN2q72QHm0hIu/U/jHoy+9P+cQtZSzZ3pbHnXaTRrGXzB52jw9pxEMl7+JZco77S9u8FoaOcYoxJfmCKyUCXTETxlUeiJIi4D8Ta5kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL0heYWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL0heYWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F1C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768922633;
	bh=XyIXiku/1BWw/8nQAHkyAKUU/6SEPvvF5aEztA/XDkk=;
	h=To:Subject:From:Date:From;
	b=IL0heYWOVCSwkC09mxe3MUjW9iJgzDGAPaYer2Cl0kRzFc+baSCaA4PlUZIqrNt5e
	 fngEoscamR7LjwHFR6FUfVxChVCbh1VNuQ3xKC5ITPjd/axVKlQR7PIfHr98qHaLVl
	 luwKDbMb/okJYUggy0k5YX8nWgwddIC19qbH9/gCrNyErRJNvFM6p40W6JEQYuUprK
	 Q3TK/zbtFMB7z1KxDRyc/UPPFlbpZ+1xKRZOCFAh4hM1k6JXqTw4Ub9aI7sx7ajuqJ
	 PziQNUGp2zMBpB9qLOHhIdvqqBbGVkQEhqEf/kIIB06mUztr09QrHD9mM3r46wDNcO
	 CWG+wHrjhZtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC82D2ED17
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892263357.9066.4562887083805669715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80150d465bf59cd290f6552010d2f237941e114ac136c4eae036c1ef5b41731
Date: Tue, 20 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768922633
