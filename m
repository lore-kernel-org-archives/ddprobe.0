Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293183278ED
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746497994; cv=none; b=qKiByBTqvWBAJEEdDtA9UHOfDYwiUROTaO9ltgC7lmhbV1+amMF+oJWJ452hbnEo77rQcx4sCktJN4NUBqH++dZVqJ8V9M5PnrgGPW1gE3aDurjrgAmHpPWIJPJyWInCyA7tB5Ibff0mEbmkZ43fKj/pfG8rCYTZj/wLA8sIArA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746497994; c=relaxed/simple;
	bh=r1VThg1N4yt3FLTYR2hqkjltbYccOA573lWk6OCNom4=;
	h=To:Subject:From:Message-Id:Date; b=CC+Nu7pWEijPAyIwlKNuFOmkAACZOR1ueVTHV+pvO3zthAL9fO176LTzNTf9UBLq2S7F6CnHwsB8mWE6kZrBbFqjXp0qS8s4OITfh0d/xJNia2n1Y7yenF5gbP7IzZU4QXPhvI4jSPSl5F2SB5OAXAg5FDqt1i3IddPy63DB0M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef4qJRQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef4qJRQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2908C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746497993;
	bh=r1VThg1N4yt3FLTYR2hqkjltbYccOA573lWk6OCNom4=;
	h=To:Subject:From:Date:From;
	b=Ef4qJRQDyXajLCxfKdyoi7vtu9wAyh8mSrQWgcpKW1gWa2AJi5M/Cu+FVIpQpoTNo
	 L/gJIXYh+hwqiJcdDU444ZMXZZYfZXBXkvJlji3LPloBT9BaX+suNUvWvBu9nBS7oY
	 Bzi1Qc+B6M+b502AAIgJUsLibFlILEa5+RVGZDFIIzmxRhygXfPWC+kHlLgTBxRXI4
	 +Cknwp1SjTs0Pj6jqib1UTB3pCCwiOMAMh5sq5JrEMzmmBUVVSbsrtk4GpZI9IcqCo
	 n0HUjS0DoTBGIJKH/tQhQORlWo/kzENZ05vIZibUVZJDW23bEAWiuSuEgxPrv5L4Kn
	 8oiVbEGM/LLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE3C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649799357.32202.12915952373889446761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe64cbe351945ab798053c124096f6bf8fc9c782f8d07f10c50d2ad5953384f1
Date: Tue, 06 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746497993
