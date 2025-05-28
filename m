Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E939C2DCC0C
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748401794; cv=none; b=TGnrEBWwewob+Xfb69u8vfIDLdeCbMaPG7NQYaD0W1XgIoAoFZwdDvIiGnNs7VHZkp57Q91Sw3/GwYjjTBk9lP+Zpl6W0WVDlp8/caEWs9RHmO+HMRd5RAuGbZZY5OXnXMwAWXFJQFGMdAm0wJRYQNIGVjtUhLgYtyOmrh5PLTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748401794; c=relaxed/simple;
	bh=+/DWTRn7GQIBTjqjHdli2q9uakQWi6dnzQTusL8IHhU=;
	h=To:Subject:From:Message-Id:Date; b=JYC/tw0OsOp6pm9pyHsZ2j7KhhV0WXYPtTz/5ciYhM7nd88xM5SsJH9Zkv1t3+KITJFm93TdcNalaOy80I6O7VDHxWGiiK7ovyA07A/izePl3RK20zmMw2HaiW2tVISVgNUbgvcc78X+CkdeAGZ5STJcXkpU6f+oiEZmbk9SSj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMGcEPrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMGcEPrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC2C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748401793;
	bh=+/DWTRn7GQIBTjqjHdli2q9uakQWi6dnzQTusL8IHhU=;
	h=To:Subject:From:Date:From;
	b=oMGcEPrd+duGp11SgvOOFy3i8zJvmjtDv6OXiZrD9N44vDnCZzLr2ajvUyAwmCoYj
	 1muh2dmm7dO0daavepxaBllvl8CWoUIztssU3h2pwqvaW5OmLABIuIoz/pGxivTWgj
	 lt7zXHLnZ3uqFAA2XMKn6JeJWUWlsBH8y2rqAUcx5K57WJuQ6QUTltnn9Q7Blq4AG9
	 vy6EeHiZlr1tiUWGLIV0GWMl0U+HcHenx6u21PtPszj9iIOsaNdPb9RyNGqtVOon0B
	 n6iYxBOuZD+lpQgGF3P55Dt+mtPKdJmc9CYIQtGt9kJvMw/ihLCHzuPx4+kqbkp2gU
	 dYngD2xswH65Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2160C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840179362.22112.12189066627670482949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef210ec12989f066b621f7b16d807743c04c6a03e98434132e252fd7fb7188bc
Date: Wed, 28 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748401793
