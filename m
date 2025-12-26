Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2331EB9E1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766766834; cv=none; b=nuiSh0w8Udx60EhmQay34mfJvtY8Vf7+wadP2EBqEGU6hAgq83C+wo3fadJT4Pg1Ci9/LsK+J5CEfr8ELx4xTeT/CEGSCawZ8A7Kg+uZJbJtGlos6bzAdXIySWUFkaXugDd/FAIAvtMI8ubWi8de65BlNaGM5VgZFz6dvFPT+2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766766834; c=relaxed/simple;
	bh=EbUlFk8YlF5uChL1+2FN8qMDdyg+JtLHq6GBgDiSrTg=;
	h=To:Subject:From:Message-Id:Date; b=XODlJt4Tgmj1GnyiJrkd0azzZVnTaFAE71BVHJ4swjw7OlQFsbC+T2Byt4hPHxsD9Zq/oPZmZhQlWKKBFhyP3LRJJnKh91f8lb4yjzfqFaeWhLR1j+j4zuf/yHB+bPk3WRHtiC+uTNRVN3UeNmuMKThyyZ/tm3gw/PXgdUIyLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd9ONwxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd9ONwxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7818C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766766833;
	bh=EbUlFk8YlF5uChL1+2FN8qMDdyg+JtLHq6GBgDiSrTg=;
	h=To:Subject:From:Date:From;
	b=rd9ONwxqrrUGzPo8/wCgWXr3mgiB8ZQ2bKbrufDizVyznm2QWoZv1gHlnfaQDvNqP
	 ssNORvSGPCImM2IAYhnSPG8oN6j5V/0qWPTe5GGBC58AVschwVzDNl1Wy865D4IGDV
	 HsgE1Iw/rcAFtxTMU/OachKj7USBP0F1vx32lbjLgRWT/oKNB+W52MvlylwC2LnQu/
	 ShkSHcpTE1qJXWO5opgEwca5f9vfPvpL7NmUoXPEtjbJMvGSmVDZzRFlfDkgGh8+VC
	 v84+JU0qzajzmjL5nx4a1Sl/Vu+312kFpAHgP7IWgQ0tHLDkw17Tzwyd9KOeZ3JPH2
	 xbP5NYNSFJGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94242E8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676683359.21880.12956468033822604719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaad0d0eef73bee063235e93cf267e0f5648b60a04d38f769c98371b993100f
Date: Fri, 26 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766766833
