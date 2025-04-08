Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C721421A
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744084794; cv=none; b=FC0S5RbxB2UNZrbRZ0rL5RAhrDuOe9ADK8tTvoAoaB6/a2UPONsukpvCQoSE8+H8ar54Mu0SckzXqfFwPdOpoH0jaaKrHkNdl+v45Mkg/eUf6G+s9QkgFb0gS4KjY0yw6+OighY4Y/l+GmagQMEA20w/X6QpzNqSlyxDQxrFA9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744084794; c=relaxed/simple;
	bh=ZEiB+PaQjZ1+xBP/h4bRjA/zOdvtE/5RnKnvFCgecOg=;
	h=To:Subject:From:Message-Id:Date; b=cm1JdNKK7ZRsO4ZsIonwjIfJEIxAx5suJxNWoGdLLiCgtaSN/ZbQfW/yYoJiSZ059h2ZTYmWVIIhcJbcaBI2DlXzx3ymPD2EZvhTqBiToqtPHlfAjKqL83Ooi3Bp66umXyYHVQri+HHoh6qCWDRd+eOVsZL3J5Q+f15Z3TU5dkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8JJDLuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8JJDLuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C5C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744084793;
	bh=ZEiB+PaQjZ1+xBP/h4bRjA/zOdvtE/5RnKnvFCgecOg=;
	h=To:Subject:From:Date:From;
	b=a8JJDLujCYD0XsV+ToAmBwJFt39uDFFJH2rihwOPKJJh29KLibMfz6TY8i/NLWuDz
	 48T4dsogiyF/bwSl3w6BwZKkjnmYKkJx6AYZrlIOYovWdWFtDiqnX/e/2sQArSgLZc
	 RJ49BKgsBedctWxdYKp864oc6WDUHDAprEkzzJ/RNZKL4rFoKlTla9mcBVmjQ93uOX
	 39X++5Gv6O18Dkv4y5TOG0nrTZJLqpLgPgHV68SC+cIKm1KeiCfVFLcwUxRqg8AWEc
	 +x3LQ95jTL6/OpRePINQERIvpcDGmZV5Db3JHnuR36TKk5oY4atJdbaIBEzj23EJjx
	 gQBuKM1DCsQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90393C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408479358.2085.14781464768127221988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad773759c9371a0d5f91632e65250f46ac847df05cba512761c7cb33632e3ee
Date: Tue, 08 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744084793
