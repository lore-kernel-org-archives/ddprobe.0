Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B393806A6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944894; cv=none; b=AChG9L9w05L3GoKuLVTqU+el+yLDnRxRxHIdYQQ4aHbvAZj2+p0IoyL/wF0vcjECTQaKco0RcMRRUeyVrfqZf8wFN/siMC/Qo/ju2EBe+W36z1YnSJdwR6f9aE7Jh16aw5AXcXdkgiQL2AEH/rlqHI8/WZAzN9Z+fqKeZKjj6U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944894; c=relaxed/simple;
	bh=Rjgfl9RnEKl4Vo0h1ytq+aBK01YpehDaXKiJ9Uq4Oao=;
	h=To:Subject:From:Message-Id:Date; b=sEE1CrhZCactatRXcDUjItpZscxJW3vFt8JuUaXe/1MynHfwC/h27GI1RTUMI09xir6YpGBlWICJjRXl08V32IvAx3EIUu15/T8QE5UmfykR0FTgOc5wBvnufAlcH0zOQ8oW3gC124fbxfGbkFSZdzT/BKBdK9Y0outlJJh8vKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjoSMyaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjoSMyaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6411C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771944893;
	bh=Rjgfl9RnEKl4Vo0h1ytq+aBK01YpehDaXKiJ9Uq4Oao=;
	h=To:Subject:From:Date:From;
	b=FjoSMyaCQ8Z4b/K6XmQlGAvy6DA4BviXF6zn7T0rU4DXryQUkTYJj9NfSUzwod0pT
	 Aple48TAq5LHeG4qQKG4MP/nxDRwVd/MyA5hcsxgpyRcUNxqj/wVg4ZNe+Vl4f0aKZ
	 +/YpJny5BjmUiTMH23PMQdthWhOs8LZ8NzRlr16zsBZlq2vK9dS4zlfdALmETaFF/n
	 TwfRjNerl0LCvIg6jJCOPJ5epMWRFBns5ufyODLEGKeruNlo6bCDQ/0Z1Xwl175VLl
	 USKGBzU1pMqon/Uw9n48xkAfD35aeU5chP7gkG0bCkJE2SuPLYS40M3P/vFFiixwUu
	 TQrIEOC7rLlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95302F3C98B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194489359.1720.15692984831949064853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c6d9db8c678068ff7a3d6b3ad00aa9073d431f26ce7d8d4136f141bb52d001
Date: Tue, 24 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771944893
