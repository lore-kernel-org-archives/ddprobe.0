Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A237800
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746810594; cv=none; b=YuSC8DDREmsGgdKdLXHYNEZKNJq4Ua9ImRiY9dggPiLieCZGNsfrKsttNaMgyCS+cwN+xUPEUj8dtNmJ8kqNb+vq9or/J6QGmRB0tDBnMnvJZBoc+FgyAgWTpSDq9JmTDRM+MkkHWCOC1kW5GU1Ra/NeGwhiXbeqTcnXBltER3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746810594; c=relaxed/simple;
	bh=8AD6MP2uViGCa6UoQkaJOe0KLlbEL45Yyjdzuo4ywB4=;
	h=To:Subject:From:Message-Id:Date; b=SaP7PoydAapzx5nAodzGqqzlETRLpOCAwCa+Y8/+V82CE/EERCWwp834rJL85B2DhZD9t3uhoroHJ/CODK6hLoT5/Wq45IBEbgKPN+IFGm7/jAhU5Do4xEaqXXHN2zZ8QW6+IsFFs/Dr/S5PI3UaW3YglbS1+SR9/XzhoO28g88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9qmxw1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9qmxw1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D965C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746810593;
	bh=8AD6MP2uViGCa6UoQkaJOe0KLlbEL45Yyjdzuo4ywB4=;
	h=To:Subject:From:Date:From;
	b=O9qmxw1P2pSdIcsAcN/8fQw6dPvQTqZRRJuc+FGYYFXWm9P5mI0F58wrEbdBTKPJx
	 zhDz/JW3ZtGI45REjuM8+TT9CmqwtoXwQ2K2Fs37B2XDGj7CuFrh9IuYsvEU6Q2ElC
	 j+PKZc7Ow2QX1bJbhX1h45W/k8dVCYCxn3ZxQDQtkW3NHe0Ux28Z1LB7rN/XyONqUs
	 ted0IAgA+Kqqg9kjso814KUX9gNiAS63yqAa/djD7sC6flcvIv1KxWSgsma/hhSM5b
	 W9mwkj6ST9dJ6RVO5IXbAWTVw1aJbBgB+YGlfgCiObjmtblJMe9X2UWWVw+SVHpkWo
	 wlQdpEYBVNy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E988C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681059357.23067.8650581600038097309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4042a9c3dc2339d2d98ba7436d80951b0c9022719727962d0989a79a82799aed
Date: Fri, 09 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746810593
