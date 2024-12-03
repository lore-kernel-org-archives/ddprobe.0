Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74504F218
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229353; cv=none; b=OomVFMkDt55xaTKixP1Nra93ZwIztM568qoGOxAAvpRWC2bwv2ifWyTbdJH0pvwVlfnqLrZCyoSPzuD5fr2D0JDEu/1Ti7VnaVR0/p0+8oZ84tK3BH0ATacDAKTg9WAf6wTTgShV6uBuTR2NKxZJcU+PGC/KQ+U+1Tyu6NC69Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229353; c=relaxed/simple;
	bh=KfjFni0KaigXBPlCz5vxNMIRNxP4U962jd8Drz14BX4=;
	h=To:Subject:From:Message-Id:Date; b=BwfH/HnubQ9iRrUOxJUKgZuEErbiMiRjDuNwb5KKjSRw34qE8fnOCcJuT74AyyyWj08+xbHqk4sA1IHfWNZTIedSVSb+mT6hmyPlJX0K1m2TlqIZ/cbpS3UBkESr14PUpVDK/pn3ALSpDQ3S/TLAWXNNLSIoBXC7QoNzCUqnTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L00/7SYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L00/7SYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA86C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733229353;
	bh=KfjFni0KaigXBPlCz5vxNMIRNxP4U962jd8Drz14BX4=;
	h=To:Subject:From:Date:From;
	b=L00/7SYLjmYKYUbcMCpQVk4YSvE72Fhi7XH0lEEY8dgUofFw0WaUP4CY0nkBW+4ON
	 imVjV99jFasNS8BcANM7LHwakMtTdr1nFdPCj/kjRwD/04/Fan4Bs7wmNynm2dorzz
	 ubTEGRc2mb0Cbfg2x/64YJ0XwQnYQkTrFynEXPQYgX8GUSE/dYsH9D7qt68jQrhhuI
	 dkgGDeXiWsXYEmk5xKk2cCy0XhrwVftDAaFjS/9CFbqjW7Wm6//kQvtn/zbtlmzqe7
	 XUVgvvbBx/BzF8kP7r/d3OJA5QqWTm8w2MHxdijn/CQkWFmWm9COgbq+6jBijdwbVI
	 wGGjdF3IAlaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96812E64A87
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322935360.23880.8039634407294196281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf3c492b5b92ab88566e6930cd624ccbb59777e6793864862f58782158b7529
Date: Tue, 03 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733229353
