Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B13375F85
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773596694; cv=none; b=f1Ldik3Xs/mRCL7G9ry9xNPh3jRShUbj8/Z2RZGKYqD3ZxzKL3KOp2XPyZAWNADp6WI383zYHvU9OotntDSiAnM9jSz9oZyKPw1+OO/LDNfJip2CxPVvyO2Wl2kxFY3UqOHKcZYYxOR415hMZoeU4qqNzseLkTJzoa/lr9/99rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773596694; c=relaxed/simple;
	bh=yAyPCngzcyBDRXunfQOXjeIU3rH9qiWYSJ+/mrSeaTc=;
	h=To:Subject:From:Message-Id:Date; b=P4TN+GlLbFbkuwWMkVzLIWgsMU8wOOnPhG0T28frV3svrklxjg1YV1l8jU5/bhMdylzQ4RPc7MqNRGA9ChbrRNh6trXxSPSWjXW0tpEKmyplrEMUCj2d8+wTCemHrn/70Dy9KNJwS4AeWOFAt2pnrvSDqEXDUf+b5fNuLl9Jdis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU0DxYo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU0DxYo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773596693;
	bh=yAyPCngzcyBDRXunfQOXjeIU3rH9qiWYSJ+/mrSeaTc=;
	h=To:Subject:From:Date:From;
	b=RU0DxYo97Xc+cc8HhyhhLR2/CLwoY/WUE0x9ZWGhedZmahlwCZyV/VMPybH52LMtn
	 Vnp31jRiasrHjWYoBvCg5tV1hwE5xB+WIo2ZOaKIt9RIjAlN0sDTpJBg+Z5ngIs2Tl
	 xq3zaeagJso3rs7kINe+FFq0ejddw4RcRbMnq1IB9sMBsP1sHDWXzYQ8u/7eduXF/Z
	 izYIUL5rkIsFJFjyM+xolRHWX/IK/RzNu/ZrkLMgHVUJeZYNwTqYgPagOjiPZofG7x
	 +srWXAJjP6W8cWHHfiwREDtwIJyLOERKiS+5GslL8mQjVGKfU3rp0hEb9KbOre0HYs
	 4TATULK5cf7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3CF3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359669358.7117.8563253474963698131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9050c16fa8d6314cf191db6d1f415ddef51f123e3c5cc0686acea53817857231
Date: Sun, 15 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773596693
