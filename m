Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4C5B5DB
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686897; cv=none; b=hS2k2ef/Q4q+X/8hd8CdFxbIzM2q7SsKCGOv+TIGf07EwIY1/z6Bh3t21ywwuLW4n6Oi6o1JrzZdZubUBRL484ZYaSP58Nkadx5ORPkmQ82dl06jsSn48mz0qUOXoRmg66Z8KAjqrVSVXY97A8PDiELL8ci2Ca/bLfNQBr8pijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686897; c=relaxed/simple;
	bh=+6hZ2jq5mV9byYQZMP6zxgaWVV58zHaSQC/mVLcWclA=;
	h=To:Subject:From:Message-Id:Date; b=ZlWnreT1XS29GvpcZ+mwOb5LYoO8FrxuQUEnd1Bv3ABqJGc8lmp/Rfjlv38LMB/yaLOdKZAkaqAbU9X3pY5e+Co/V0gvn3F6nJXBI+HNb+KKkUmt1Iee4iWHDTs/Z+u0da5LmH9x58zPNDHNxR2IcaN/IZkzy6UrSimYrM3w0WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqWVUxs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqWVUxs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB95C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707686896;
	bh=+6hZ2jq5mV9byYQZMP6zxgaWVV58zHaSQC/mVLcWclA=;
	h=To:Subject:From:Date:From;
	b=kqWVUxs+TZFXdSzgToaHFeWIkeX0sF+MMa1cNd7Agncr97NBHxKegI4Gxjd81VRLF
	 XkFDA2/IAWaoz6P3eljhYjApVXG3vbRzW930FrOG5Jd0A5DILDZVoLRxfJBPREFj3U
	 uMjSoxjw6FiU0+vnxieqsYUX4oYSyMDsZM7y2iPSuIUDKWBBM4lp8Nd91PKsN4P9Cd
	 OLGU+C1tIrLGs7/yG7umCVZG8i3uFKfLHhkOjIdU6KdX32kBy06HBmpG6tAJIfuEew
	 tX4Zj61i54z3334TgtDMQ5uJytO885W5lqRYaMJSzOcv5q2n9D1HCWkyD9diCOLHQU
	 7lJWBakLNZFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F481C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170768689638.2364.165758904288697009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabcedff3e8f9a37884cda090bd19c51fc491aba576124191110d970235450c9
Date: Sun, 11 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707686896
