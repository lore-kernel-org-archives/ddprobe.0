Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADB724E4B4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748492993; cv=none; b=fcuJU5nEPXwom3rvKUAHUF/u5h0XdcHL3LKyzIygxgray8gvxHR2uwzRKM3gmc/yHU7phVR3yTwl8kgloxcx/LNMtTuY55nFKI++EkYGH9bVtPCTaNPt23GGkWgvQSPEHtuqEb7HXCPtFpL5A492syUHHculdgs88h9MGq+W+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748492993; c=relaxed/simple;
	bh=YOEKyy0tbGtC65ZgXFGqR41zOVQ4pZ31IekFVWDevLo=;
	h=To:Subject:From:Message-Id:Date; b=QxMNgMfT1xfgxFOxPxYTFFUmtUK6Hz7T9Uzot8PvwMRc2B0J6V6I9nYCe1fluYGLGrW18BLceRRbV529W4tNqEaSiNJe9hdW1cxA+7JFfoGJxyCaojxabRUqIZFru1O+ZPaDxAHpf8UxjpVPmbAoVfjAmF16UPlo0ZLiKDOr8xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxZw7LEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxZw7LEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2169C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748492993;
	bh=YOEKyy0tbGtC65ZgXFGqR41zOVQ4pZ31IekFVWDevLo=;
	h=To:Subject:From:Date:From;
	b=sxZw7LEFM0FJB5SHkgfGwlQfp+OyqdKAgbGjZKANNW6+3JHVqLH0G+XGtqp4m+YG/
	 4Wd7I2pNffs5QEu9W+hyJDlSW5oR6bDixaHoOQ+a8MwAt9V08p+c3sG47kQsXHfkxG
	 YtinHAh7mGtZpwilkecb2HXjRBI/4cIT9BPow8brjVzJFQ8AJSzM/+pg1Wk7PaEiIX
	 nG9eLrqU9p7M6k59F5Pap74HivE/rjieMO66wpClLPRmEtN396+RCTNaKwHY+3ngMC
	 rwPs9hQ3mHP8u+2/WEqH5KvO/fTdAcTW8DdhfikOfXCF+Cx9Ys3//CVV29YFHvVTOB
	 rPZEasbO4RRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A6C5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849299358.24748.1856299106806903183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402983d84069f6cd09243f251a08c593694cedc3d079e9bbeb313cd8c87358cb
Date: Thu, 29 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748492993
