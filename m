Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCE786353
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743617994; cv=none; b=E5RaJV+FyOA57rlRj8Ff301maapazOX0YAoE+nKKng5DvL0bxWF+mdoJw6yO3RJIfTl25vDtJu0kDC0bDdw0nFVc+v5FHGCZ4WWhx0qpm+VPukLbJ7yZLf69+85/DaPWX1sBbEaJDa9/g3L22ufGCxjeT3CNG1DjbRluwjZC+fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743617994; c=relaxed/simple;
	bh=KPM+UxXz4Ir8bRvYqq3vbjNWJPq/WhEYZM2NVZRyyFM=;
	h=To:Subject:From:Message-Id:Date; b=ujBy18NC18CQEamxcsPmgIMeI5+/TGso9JvywTqHXwKQRzy6ipBFxPn6KkTw/XkX3MFYKMoh9bO/8xt1qm89uxg0dUpEuYgQbUD6UtRdmBDOLJYzxKxk3aX9YCtkHxt3ll1Rm5Kon3gIj0K/BxEp1TJU4mjt7HWI+DvgO5tN7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNZzZp9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNZzZp9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC542C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743617993;
	bh=KPM+UxXz4Ir8bRvYqq3vbjNWJPq/WhEYZM2NVZRyyFM=;
	h=To:Subject:From:Date:From;
	b=QNZzZp9zyToLbTsOBI4iXljmqu1OzHFM/g9dUOe+Wsp4/GgOFJx/fiaY4g8sTCxLj
	 gcISMuf6CdDOT6loEoUZqVVcJQMiTkbSwxc0p8sW0kODDuPxLaney9ub/2nLA8zBHM
	 U1DUT2aPz8LmGF0yFQzitsY9JpEIIJdVeqxDs+DL40KiKZazDhWAV0a9/jX9/hpad3
	 BaX+nxZyjHvJ/aR4GCSi+/W3Js/Hu1CvLl7G5NRbOfqFpubqKbIZNjHM+hN7cwXP5z
	 5ov8GLrbYwgIQ+RxBTRbNDEQa6gMXIsJaVH68hl5S0LEI+pWaFYG0dMBVpn+ddza8o
	 aWzDTVozfO/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C57C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361799359.10379.7916362880780089221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf10e66690011a58889af50c22625e61e324736bc7eed6706993a1959668d2e
Date: Wed, 02 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743617993
