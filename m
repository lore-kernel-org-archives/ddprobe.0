Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4181179E1
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748236795; cv=none; b=M4DmuzpxatRJxIR2566jhlRKkEKH25F+MqyyGv7HNfz+2kUVS6t2KbxZSpn2SL7OU6qLAF1883zfneOQv3GQbFMc+e0STe7dDrtS7CFVk7KiMPTNWjmgi7wbRy4HsVRZhLdCg+vmAuU6aqPfWyreK9M1SutMxqz44frlQlHK7QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748236795; c=relaxed/simple;
	bh=Dh+yqJj9GhPSfLdAx9GexLy/+RviSaCjGG13yzBvr0I=;
	h=To:Subject:From:Message-Id:Date; b=sHqUs2B7DLm8ja8nGfhCggxq9owwMNkE5btSS1vqLnFXgxr5nnYYM1WKJ8OKULjRoIvITsFz0opbIWhZ/Z+Dw+ttb/TzRO301qGrJWVr16eUfuI8BGeJQTVTRUKSPmCbW9uOO3CEDIGd752RaTMt8gL4MCvunpPtdODvThs8kUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLT4WPyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLT4WPyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748236793;
	bh=Dh+yqJj9GhPSfLdAx9GexLy/+RviSaCjGG13yzBvr0I=;
	h=To:Subject:From:Date:From;
	b=qLT4WPyuhKR96mDP+69lCq5FqYzU2Jj5fAV4qtPOpu3/Q52HAIu3jkzAGJ4Q0Pkhs
	 sqGkr17V3S+iYop7riqr8mheYVq7PL06c5Ym0YLQKzXsvybf/h//BkVvQp0wpXi9Ns
	 owi/IiNGNpL6Hdtj+yPg9/T8w4W3UEdxkOqGJaTvQh46izEgqeDYEP467c6rbkW67J
	 7o6ci38/jnj0eP82iCKDkSwC12qKizk/9C9GJWT9o5XiB0YHU7z2MCJhRM2YASztMi
	 WdgmvUUrTopiblU6kjmn4oDjosiYAHObTU0MKhwAWDK4I+ZhC7Z40hD82ZjfxFG1VE
	 E4Nthy3inMR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B6C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823679358.11320.3681928138111647098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d91a3c4f8cab1d1f540151aa34c32d7e9aed521649863f5d7f97124a1f210bd
Date: Mon, 26 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748236793
