Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAAE3F9D5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727133953; cv=none; b=SUtgyebnlHYtGKpGWMY4SkBsoS0h2G1DRSz267K8sZKxBVXjlkYEJhbUNpO4X12Tq8mh+NertBo8i2DmF0jGLK39QT9ZBKL6/CbYBTYqabYk6167/IfVwE0wbNP37bRBtqP9fqTHrd7VGNUXcRKgL4mNcl3uQXuUG2y7PMtGuKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727133953; c=relaxed/simple;
	bh=TQnXaywqRkNbHoPkGcaZP0l6+BQ3ykMfQlCwppTpoMQ=;
	h=To:Subject:From:Message-Id:Date; b=UrDHVBSp6kCEnUQjiOx5ISk831HlhgJde0XFgnmyERoPwxGAJ0JhOR9tiVlMX4FnpFLGP5J3Gi220rwixlVUlU2tXlOu5QR0DaS6O4WVYkOHc4jkcUYmYp4qSCUF3AKSvKwFwtYrmeiPngglQVAjXrpAER21/QTcdSJ4J9WIZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oun9RAqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oun9RAqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB417C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727133953;
	bh=TQnXaywqRkNbHoPkGcaZP0l6+BQ3ykMfQlCwppTpoMQ=;
	h=To:Subject:From:Date:From;
	b=oun9RAqacT/0Y1pDWFZFQdIUWnYR+mDF5TQ1IZa354OToXOyQvH8uBtkvVEjLXVJ5
	 2fquRjbXXIkl9noHfi8H8wFN3xRE3l/FkP49ijeCx6nlDrSMHswHa0DjX49HLPY/bF
	 NxFxmVC6p+uHKTtA1loyVtOcJhgk5Hi5RbwoJEqJNeI3N9R+Wpyil2y6z2A+TWQ6Zi
	 nOxWMPH1HIa1iqW1pVDUICj9NK91asSp0sTXraKG2FSBdNK7R0DVrYmJ1X7omfMwKq
	 uEQDQCmoF+4Y7hbvgR0smRW36T8xu89lInSAXwPUeQVlL1cPWX0nYRZNXw0eUAMZHx
	 Nv7vM9GnYK1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B85ECF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713395358.3133.5126780082830209283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d88dd83b4595f835026744bc5025e1341bca86edf77ba11132204f950fb5dc
Date: Mon, 23 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727133953
