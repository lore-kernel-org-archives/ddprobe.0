Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AE825A354
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770747834; cv=none; b=b7LExifHX9hk6b64vPyNy/5Y6dw8DtAlNR4ktQeFoSkcoQCZIASOP++3P9Ey/R1Euk7AGkCVkGBywKIPVWNhBqN3YpS7zYWmWQy6atjP9CEnANqQzq3jZRADmA8dndd1rFwq2375md3DNJKq3uC/KGCvkLe/nBu7RFetpnD9wdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770747834; c=relaxed/simple;
	bh=TsMoyB04ffQ7/FngBoWYRbctfAenjkMqNo7C5yU3Pbo=;
	h=To:Subject:From:Message-Id:Date; b=ePZD53iIAT7KOGKCWWHitbw87SjJAIwUOc1Zda+u08dvvMEwmPkrQ1lM9uJpagE5UvQ2dxyWROSTb1hmU887KfJkX1hnBIKYdc7bq5vJU6v2/gRLDyMd0wCVxwMLlTABk6RNnnldjqoSCrJTKuzKdkjnAikD0d9hfZgn7KXT0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3s/p/5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3s/p/5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE39C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770747833;
	bh=TsMoyB04ffQ7/FngBoWYRbctfAenjkMqNo7C5yU3Pbo=;
	h=To:Subject:From:Date:From;
	b=A3s/p/5wyGrBbvLJRFvqPiOuP6wtJj4iVk8vxYV4XHRz/3dMkXQWpUq5iE+kgJf+V
	 AQERXT/UqPqttj3v4t2W/VsSITfDSrqGhsy+b/5CWshjjWe0LFchwcJR6xKYhU07l9
	 wDwWft9IbFtjebux6y81rM0GJgZ2P366iuAMq5Z4Mdn9gkXajMfz5hT5wZtlin82cE
	 5o7oT1sqNgmgcmX7b+55Wtv80IRwEgY0fFs6J9Swd5fPBYbieHo65sJcxYnlfb4Kp/
	 cyg+7JBoRSNIAzZNJcSPpWVRmanXevcsN9Go57p3XBZAbKHPQqU2Lw2jJ6sQFKQQnw
	 8qG9qiFFqkeQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C60EB26F3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074783365.3128.16154756753673812793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef46a3fd88288ce06a5ff899fa9c494cce52e583e1af05df5689c5b7d013212
Date: Tue, 10 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770747833
