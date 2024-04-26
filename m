Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3BC13F01A
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714128743; cv=none; b=jJgWY1HjS+IOLed2zDImZcLuIxyH4UvjWwn9j3HRC7mci8oIuHnrmnzlMJrCFH46Sg4bwVX6OELB4krmNPjh7K7NWxU/2ltL1lNSy8O8DAX3V/Is3nB66cdBqz/+GJWL2+UrmI7Rzb/guT2MXLg5uafuGU7grZmKITUup6nCX6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714128743; c=relaxed/simple;
	bh=RosQ0RGCVrthBUNaMqIywgXHn1P31RhrXupfDHr0rvY=;
	h=To:Subject:From:Message-Id:Date; b=CDbo6sK//Eep6RDhhtKuCqtybBOVDJVvvfcXtshxn7m1VlTkGTpJEDgCqK/Qc46JX2eSVNGIFr9fXGLHiOfK8hOZDnFH0wT4kVVhFHBksMlagg7smuBydpNAH+QjrfTY7fDthNglxUClq9XmmEnokeYx+/xILgsp+uRwDX4ioXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDOFWHMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDOFWHMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D7EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714128742;
	bh=RosQ0RGCVrthBUNaMqIywgXHn1P31RhrXupfDHr0rvY=;
	h=To:Subject:From:Date:From;
	b=mDOFWHMHibBvCdKaT2UCqDPVLXSTD2ae5DDV7ALWA+u9k1ruCWZU6MK6TYt8HEgF3
	 huAvKuJ17Fp33Fo9P2dMh2vVxE+OC6m2em3Fh4ZoxuC49XDGsgSFjbgXXjTVVq8wgG
	 FKaB4rVhwjGH1BMMcwHG8Qdd5502eYItUMfVMt8EU9VIzZcVtXMsSWLKvt48gupfaN
	 Dv7tKTdpw10IVr3Lmmj+bEtd5sI3Ul3KgUhQDZUBtcyVd/G73zJeOQ2UA1Bg6RkNSy
	 ixSXIq9yudhheHd5c6P67jXH2AzRkgas5djvQROzrhbQ7cVqrupHLgPYrosg9x5pP3
	 QCRIa/uQzAz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5ECC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412874276.3407.830622420762867532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4139c3cfe159a99728c2aa4eef32827d9ecb87007aa694a584a0d21db20941ba
Date: Fri, 26 Apr 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714128742
