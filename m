Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B61EB5FA
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748456994; cv=none; b=XMj8YWTNaZ8JRoMWmcbt8SY4RUtCb9Tfb5nK1eM3OFIEecl0puC6+NRcoUjhhXMWFkuLiIcnm2xS1gpKMENkEPNEDQstv/AnubC60db/g1zZXbv5rmENfqVS/YQDiO43FDUN/H5TT3SL/vhVV9RsBKkWIZKnkzZzUjCL58UY0YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748456994; c=relaxed/simple;
	bh=b/u6HXL9gw8M9EIyPUI+YRFZN4MyY4Ig9VH/3Hpv5YQ=;
	h=To:Subject:From:Message-Id:Date; b=BudxIooxFhei4xABZ4ifInvhIGkzueZCGJYm5HyXjPxkbcMY38UCeLHg5ksb3Xy023WgSDRdjgX75dQCCso71lkizLRQBV+qt/QCIDxxZH5nUIdKEG9Sk27YUfoh934Xt8igb/SZVodGCpDGGVFTAETpWp1UBuzWeN8J0IOTNF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcA+puAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcA+puAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748456993;
	bh=b/u6HXL9gw8M9EIyPUI+YRFZN4MyY4Ig9VH/3Hpv5YQ=;
	h=To:Subject:From:Date:From;
	b=mcA+puAkAE6Zra1gVY1S7I1xUlSE4K8oKsrCt0qUdbXNpSd9VIgGPL4uMQLfWQXi4
	 aKnPScm1qKZfFfBrh9bKgbuNssp87cuT8EsRYvnBjpVTTkQ8kvxBKB4brXYNTa0c5E
	 re8yYieLcwtzorYlMmJRyZ3glD3GVYJNx1s3YUAKYrjPyu0Dx2a4kIzUgQQZRO+p2Q
	 fwk1dj+XvZoorfJOvAHfcN7/kxzVIDt9ch6RR5lnyasjf9t0ZUfI+hWz25beuDGxxb
	 p/3yRTqi3t2peoz3EOo0hPKn5iHnalhKhdarfQ63aWCc+x484ynvCOln2DxRFVD9Yt
	 L+cuLu6SZaSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE9C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845699358.15792.17620092730857816209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffd5cf5aeed0edd9477c081a768c0d1013aaf3af2139e0da2eff6d9ed1cb271
Date: Wed, 28 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748456993
