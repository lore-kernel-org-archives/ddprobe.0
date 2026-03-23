Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD573DA7EE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774294494; cv=none; b=LNv5zvX6lw8u/vqfsHJk56l0W18gc6P9wkm8yCyXWHI/HNsHM0e4ecMn5CB0iqRFaD1hlNrPJBdNOdgpcdqjHPaPZU9DJkp0mz2wvjoeSoU4PSwJFLiYCOUnq9WAuqzVGKrvHvexBOb5lrv5QsTNoEP0Iskkg6x1sXWDK7qpqVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774294494; c=relaxed/simple;
	bh=i5Fd3MrYqzuT1IowRIJmzaSR7oxlRL26b2zZrrrMsl4=;
	h=To:Subject:From:Message-Id:Date; b=Xsa5lUOzdkEAus3G3j13jffQXtL1fw2225Job/GWR3+hGVtyGMXUpI6hhVi09C6VUPObVi+fOqNvw0M/lAOi45ctxHf/E0odYj+UGNIYqhyH9OgjnNDpKE2oeJa6VinBMWEp6Xp9PrNbXSJ6L29HCoam5cChkX3pt4WwSXPcU8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeRz4Yvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeRz4Yvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D806C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774294493;
	bh=i5Fd3MrYqzuT1IowRIJmzaSR7oxlRL26b2zZrrrMsl4=;
	h=To:Subject:From:Date:From;
	b=HeRz4YvrTd7GSZVk09tgGQIDL1MQPkMX9v3Beu/4B22m2kCTkYLXXYN9Exo3Owaaf
	 okzWoVNx/uSyzN1DRnndpmBI/tkG+H+u2QYsIhXy/uzumvlPCk8IccvBzhLYRxyxpZ
	 RRzuO1joQvr03PV6Gi07J6ogW/xipg6aWlrCiPXv+X/INfnW60+zSZRsbCRWNrqSID
	 U/7I2YYwR5lmh7YmTWPVZDUK6CIitc7WbxenhZjFUIX87Dj7W70u/hDKRuEhvwPvzY
	 aA7fu3S78tF/tKNu5KJZkdFwAqS/EBsDM3asGSKSfddhuoeKBvxh7PDlDiu/RIxJXA
	 C+c9sNf+O1M8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA3F483E7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429449358.2403.17342261174208607796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245a74d6b13417811fab63cc3e869a88f8e95f44ed0e385223589364486af642
Date: Mon, 23 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774294493
