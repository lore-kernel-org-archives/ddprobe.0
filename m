Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD613D8BA
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713896423; cv=none; b=uh4FBgBgQZQaBuuTOTYVyBc0++9+5Jm1eK/tLd+/+lBWVhALsE1EzMa+CNgJximJyyvQ54iHECjiLPffrbLJRtm4z4r8L3VQ2H8wq8f/bFwv7pqLJsfZfuAG/JIatb/z4CpBYC9t4nsma3ecgUv0s/4am9/ggkD2Ht1r6ImtOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713896423; c=relaxed/simple;
	bh=qvS8JbjbBvPhFYdbASGrTwaptvgljklfsFOzu+kkdTA=;
	h=To:Subject:From:Message-Id:Date; b=IdCTVTXWSeq6w+HIa4b1e4OfSxluPX9k6bE1O4l/zJGCe609pgFw0LgB/FAvDr4+tjdEOB1qNkJRsx1d5o90A3QEBa9sBNgDRh0aedb5/ck+GQVc2E25ppFD+FwI8zYFYQV8EpV9bf6DXdlVqp86OHkhs9cEbdm2lTPlzDI0fPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kR6T2YNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kR6T2YNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BC3C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713896422;
	bh=qvS8JbjbBvPhFYdbASGrTwaptvgljklfsFOzu+kkdTA=;
	h=To:Subject:From:Date:From;
	b=kR6T2YNVccKC+xBxNfMIsV68P0Zm4HMXfqTdzDmw+cMmaWKXJd7mJSviRqTaREZKZ
	 fTsTJgwcQm25NUl1fkr+nod4g9PbQK5iaAre6n9Wan2hOzWggo6yS277vyBt0sULKB
	 hVOgoNRSJ/kvwXcnGw6MogIYW+tpZb55coYci/y90Mul82YZ85leWEQwErA6mXe+b6
	 pKtjJP7Xg0e3Z637IZfChvNGNnqAzv6P1vQ8jSrrkximhQ0GC0cJMmnyzt1d3EI6nv
	 iAauLNuU9jPlA3RduhTg6qiK5/WRwCAZnQ/JFcOeTJyb/sSQEomG2Gl8gk4uRIW70s
	 HRkEjHQQ8TIbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7172C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389642280.23281.6245430903737954709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5284766548a35bf3292611c86d319eb6f307d1c65bed12b988148475b32f4ce
Date: Tue, 23 Apr 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713896422
