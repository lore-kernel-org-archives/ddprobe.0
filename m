Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3077A3597A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743971394; cv=none; b=PwgdZNs+e9JExzsPj1IbWR+5L30R4WtjqncWft6McQ0GpzlnsT6jzMTqnKmZyuDPR67YYh/sgxiM8QlaSu06BBGsMLROUBxKS6MNRi0SnT7u3qppweqUsY7acaJW9qbyiSWXMGf31RGL204emhdTqKQe5KxF+olhWlHHjrOdQzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743971394; c=relaxed/simple;
	bh=QT2gIWDgIwjJ2cZhr6nMaqdF0K0GyTufZ0ZVD+pF0U0=;
	h=To:Subject:From:Message-Id:Date; b=lTC+0IY8qYhcsQqpHsdiKtyXngb/PqEUyZDltBaMnnAmo8o/KfqV1/owSLzijfUd9Pz5X8MPcbdXqJ3KFWlqqR8Z3qiRxavly7l5wrcX+Gfe0smyGCqdbnptfkCBxq4I/nU46VETshFLChi4WfaMPBgGDFcNGdXV7++UGadyKPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv9OLyxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv9OLyxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE633C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743971393;
	bh=QT2gIWDgIwjJ2cZhr6nMaqdF0K0GyTufZ0ZVD+pF0U0=;
	h=To:Subject:From:Date:From;
	b=Lv9OLyxk2U+5WIwhIJv3UAlZ5eOIyqP+7Wesq/1eh25QslsDWZk7gvdES3RL+Yd8G
	 m4zqHY7N6XGKz+NmVHjmyBPC4xNivp2SLBw73DDd4PnsCFjGg+gbS47uKGGJb0ruiO
	 t35nvKtokI4/Rb4CQFXbixJ3jJ6GvxYEq7PyzWLeXMFlmdYnG/5HFYOSfcHmwAp0tI
	 qgTGk7EwIWI3DUD3RMvCAVQyUjavyyCkJ9d5QZWkqCyPFaJsaHOyFG+7ZMPAXUQFLC
	 jPru0jUbXrBt9OokS0p7ozgathxUE9MM/rDFSWpBBjK06wuhr0/ffsWPZ1oHbY/8fS
	 MIGIkZcSY1nDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF8C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397139359.30530.6936838061648450970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f303d08f3fc4549ef083cd0a5d0275311c24caa587fcbac94a706711c62eb730
Date: Sun, 06 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743971393
