Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4071C84CB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772670294; cv=none; b=MY3XhbQg3S1HvJgbhgw14zGsczM2PTOgyvMNIHzoCSI8pM/2JcNC8RgvM/cS25WEWs/W9mZLBjlM3fUHclnRZ6CrD3lf9Wu8ZXGGmmImdXmVtgzoLziHU4Fv71cQEWio8se2lZ7Ej8rBDQkTSnFLEF4Xc1mvDT1cbqqpckOHEBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772670294; c=relaxed/simple;
	bh=oWOL//irtBdopcRWi3QQAbmx1uK4UyWY6B33o+/QpWo=;
	h=To:Subject:From:Message-Id:Date; b=T1KcedtPNAAMbZPWqNM/4BscroCj4j8b/4ap5jFDx4Dwr/MRvNuJgre+lDQ/dRhM9sva4v9O4B3rTG6IOU01/EgqJE+z+GFpG5kSEPvyZRNi6VzSUE6hvKDZcERlhXD6ZIBa8/OvzuKpePehH29AfVNhjxwdWOPZQ9lb92SEKw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdeCvHPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdeCvHPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E3DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772670293;
	bh=oWOL//irtBdopcRWi3QQAbmx1uK4UyWY6B33o+/QpWo=;
	h=To:Subject:From:Date:From;
	b=CdeCvHPnkShHXFplnyPNbpcIb479LiTDUVnUWG0HkcD7AbwOs83w0Zy8y/QfMiKjV
	 Ak1vDiNY94jAHTleNiOKLvOXtTJZibzjMdyAV8zDC6m3ojLGzRNoEgt2xBi5n4fgbL
	 t5m+rNI3aTYTXa99OpBmZqDiP7DZ0SaDyCcD/wLZgPFj+TWF2O2kOU/QwDbTk4NLph
	 Bln5B9EiW9+LHrsIAfFxEjTEdCQVjrVXuXeMvMr2sKgzR05FrnsS/lt5X9X8PyCMH4
	 9y8xhTTjqKO3RY0RMyS+aXSlWCYCSiK4U0WfEFxeD3D8ccFYs2EzBXdDtJ0CTSvvpg
	 JWWc0sBwwrj7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99726EFCE22
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267029362.26041.1427954661442840500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fede23c628af8090564afa8faf0b7857591dc367a23ab2348892148830c3c7
Date: Thu, 05 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772670293
