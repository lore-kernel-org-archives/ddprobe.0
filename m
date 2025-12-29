Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FFA221577
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766990034; cv=none; b=OSQ6iDvQpleYYzMeYhp6bTbDnCr1OndUIDpqVMEPaARFW5KhWb4F9smIAizlvvLdaq/lnC0Di2TAQMfjoUVV+YD51VE9XQieYgaztjcd1koZ/k2T4Ye0du1ELzzxQUhpMDKni4JQjg2U2IAJkgKtqVfnZcKLEO74MLN/pEyjwEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766990034; c=relaxed/simple;
	bh=Xv1yvi9VU/7PCLusbVJ+hDCabqHqeC0IUP3TlH0E+tE=;
	h=To:Subject:From:Message-Id:Date; b=ciz+EVQgbHGcGUyvhT01neaV8a2QuPiwgjM80B3aYGoRrQVLqsHREgrkbnhPY1oS+dsyf7a5RMktyWnfXJcx/uQYUwzCrOefdRfIlpM/fVifyLgXd7l6LZR7FdFNji7AsBaDTwj+VZoGXkg/yBjyUxtSKE0saBuLpYv/WQ07/mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUnMCl2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUnMCl2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766990033;
	bh=Xv1yvi9VU/7PCLusbVJ+hDCabqHqeC0IUP3TlH0E+tE=;
	h=To:Subject:From:Date:From;
	b=HUnMCl2ncfsfQ3tohJ0VbJDzO2DZmblHRPFxRkCwyRRWCMtbWph0EEkb9aOVsktYu
	 sWAi1/57vvtvLMzAc9Hxk5aJmHl7IjgNVZFXbfRmg6fetQzbU2AeOs4nud4JFytVjW
	 SuBIJyNpGyy8EWosvAQcEKq0zbq+eEYDIyfltxtrxR7PlzELOiO8EkCl1q0yK6YGVu
	 zwYFZjs2Bm8T98DDY4c0ut1Vv5/alypTyXaYkEyaAE669s9D16K8jSG2NrceUxEJ5O
	 ayCa0+0cg6I6irhyUNaUoGLhQVtozjmSgr35ZmkmyOnbeebPmW70YJt1m8aHlLb0w+
	 QEWYWkBnWR7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793CE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699003358.27526.6391277275752975439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140079e88cbcf5520cdd5a4bf2e45b0872d000f0c29b34fe575f16c5391e1b73
Date: Mon, 29 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766990033
