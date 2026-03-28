Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC0840DFBC
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774697694; cv=none; b=uHehMJyugOqQLlYp6Sde0PT5URRYLOHWJq/T2mtWbpc5sS8xCSfBAKPUsXhOPPZFn8qjjRw+HtXiJMFLn0gAsUgTk7JZFfgRe9H59NlalUPUgLFWFMyDxEHfDw3ORRccyQcmtvUSsRmutjixL9vGlCiXhniCpstSrp1O8quuNK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774697694; c=relaxed/simple;
	bh=uoOlvDCaeZoFPC9wTdHXwEii0xKjpcRSH4KBdPaYnso=;
	h=To:Subject:From:Message-Id:Date; b=VpyMz+ZAkLBbbQumBjlCj9MVJzR3DPFqGpHIUMlJJZs5wuI+27cjMOp0izc3gHijQiTOUr4OpdlYgrqAx0z9euTPpLZvWL913aktbMcwBvzC/tGifmXEgCmWvPIyW3APUnFnOXR6GvVbc6WlAT5tnR+IAW94QyTFwWGtVZQtKUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3zUhGIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3zUhGIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774697693;
	bh=uoOlvDCaeZoFPC9wTdHXwEii0xKjpcRSH4KBdPaYnso=;
	h=To:Subject:From:Date:From;
	b=F3zUhGIZw/x51gf5IEBlDppQqB8DHM9U0r+GmST0TJRzNZCOnou29DWLZ61+nRNxZ
	 UlgGgbEZRn58eBGmzmsxEuNPDq2Gr/Ipp3ogceJ0lwUs+yAZXpEkuzx58RAYduYY3Q
	 oZe8qMJ736gPpCc8JuHk5zgZHW6Do2l898BxoSYmceYiI+DfEHGcLOY9XG3ZZaYydI
	 L76Mnh0xr+vuiJ8uy7Kr605/3Usb5ZuF3hwQBttqi3jqnYNEoCf3U06ntZAQ8xjQhM
	 rhmZZwLRuK2525ZQQwN0zlV+yisSnj5gs2zuOktMcwkZg26NhTqUSXOKgS7V32ANQl
	 EFi3scaC8GQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B6410F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469769358.4118.16315390946629339184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5ea12a108d159cea176351fdf35151471e2aa29c293a745d8d77a4a5aa4bf8
Date: Sat, 28 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774697693
