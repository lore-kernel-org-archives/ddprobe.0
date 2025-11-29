Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380FA199D8
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442974; cv=none; b=cWitMGo8q/xZvWRwB7oEmkJYfZhDKoB65u3bGmgGyyK4KW1w94lY9urvtJ7Zsms5l7wjv5PUo3ttiJiEl30BOMzYOndM+HVRTOLRkDHsEiCS/c+F3uuynLMD78fTl1xeTPToU2tfvg5t15Jd6cY5T1Iteg99esiLmMUrqyuFcF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442974; c=relaxed/simple;
	bh=EHuxlAaIPsGCrgxjqxBqynKfy8TTqGlYQVDfDFXJRFs=;
	h=To:Subject:From:Message-Id:Date; b=saOQQ7iLl468OQMT3BBPDZmw6c9vw1bDEdK7DrrXc8n4yl+Ct1bRdgUcpk+4/Um+7tKJm+9yA6pubBvmC6zZfqS+ScUQRKreUxq4RG+PicVRvCdtsJCNH6fMKJNSZvbwaH9dNORAEAtEvO/FY6cMREhIgK/8sjdZq+hMy56OGUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOWp9OAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOWp9OAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764442973;
	bh=EHuxlAaIPsGCrgxjqxBqynKfy8TTqGlYQVDfDFXJRFs=;
	h=To:Subject:From:Date:From;
	b=OOWp9OACiXmDkl6fYO4ECM9LMVxRThZZA9JTRJJ6VKARUs02lo0do+ri+iboj7VqK
	 Em3qCc9MnC/aiqmnitrnwi5tSREwQkpq+gdvKrZ2oilH+zVKiwx2I+VodhoyBDaWw8
	 4meLPIsalwGKoJjUNCyxnKbWtTDY72H04p9JGmqcC5IHij4V0CW9YBCZuM7tV8mofp
	 XW7hQprayn9iHEpBjvw+XQx9qERVftKJN/xhH8i/r/5PSnR0IZ4hMgXzesxbvTQXzC
	 f0Xpf+O8sC10juU4IvQuWNZuRohdaq3bkyOzBkVtC/Ftr2ainjxEbelyvOk6/vqYIS
	 nuz3Vd7Bt6/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A6D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444297358.29924.11278859967792695250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8a9425bc0518fd0d28ed7ce886349190d55fb3d01da8ef9311fc76a40f0bbb
Date: Sat, 29 Nov 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764442973
