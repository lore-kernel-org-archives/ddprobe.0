Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9021E1C29
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744832393; cv=none; b=Iitx9vImY0+sr8yFMoEQtXZIYgOw5lkJ+pIrXk7zA8z+OqDxwcu+U0L7iKNkQla6XginQF8FL+fqnskiLkLw4OihY8v8C6AE4NmC/1YU+plzLLLlg855+lwtJG1oR8xvi51W359V2kMsFDURJ9QdhrOHdT3LXyGbtsf7LSwunu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744832393; c=relaxed/simple;
	bh=5ZFWuGYiUTZM+dMZ2TnZHYU/L4PGlZlIrxzWUjUMMeI=;
	h=To:Subject:From:Message-Id:Date; b=AiihJ2qj5oev57ZCB0BfdnApeH5qrU3KLEszqWYczwhXoMNAE/PdVp89Osg1CMrfrqVFBdcJaSk3ZcSxB0862/vbglHhXgw6R7cESH46hqOF49h2f7bTV0Mef/BRnfEqx1QgkRrkqOqfh1K1kGfPkFuQJpSPQbWVZNIC/OemW6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbjNqO3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbjNqO3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF67C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744832393;
	bh=5ZFWuGYiUTZM+dMZ2TnZHYU/L4PGlZlIrxzWUjUMMeI=;
	h=To:Subject:From:Date:From;
	b=CbjNqO3zL8HjCOUHjdfY5WL3ylaOjkNC9AxfMYcIAhTUolGBUt9ATDwvjDJF37lzB
	 N4YQfV5e9AqfKTNzX7LJY+cT2JTC8RVi6YntWpD6m/f+hesJEypcYZwh0YI2l/Kn4s
	 vvbkQ8s+L8IKiF1B7MKawKHrNU4nUd+YG2x/+Q2/1y2stKjOT3YIlATZ6B2Yujg7Ho
	 r7Gyyc7EzJspCoMpjyK8mrOSTAc+gnLnMmKnWEuALmxvmY9nDpZv1XzBac3jucabwv
	 xEu9phAqa5nYkRUcsrW894H/f/uZ5eSLzRiCO4NQJ57lO95G7KR1oCN6l72MMX2kWy
	 6W+KOqQ8CvK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE6DC369C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483239362.26532.13398666591644396642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735a876168182f5715977c95b128ae445dafebfc62ef10df51b5ab1af9cbed32
Date: Wed, 16 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744832393
