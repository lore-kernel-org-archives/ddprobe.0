Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC8738F24D
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787501434; cv=none; b=qCV9U/V/uPv185+CXvjkIr3dusNvBcCNYn23zVF/7RZYNEmdxRqRYuNUPyuiKhrenBLgbben31ZX+taZDzdxXsLG4KJEW23Z04eULO+QG+1cbojBKwc5jMewy9c0cHubfqBrtcQtz9a0vG7y7D8UuWO84mSFWR5ec8Jz0Bdk5co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787501434; c=relaxed/simple;
	bh=YhS7x5Drepy4cHzeH1//CXXotVDiVZkYktOtGmiMCds=;
	h=To:Subject:From:Message-Id:Date; b=VRXVvGnuST9E99DK8dcDAHvrh4N867uGX5IyvK+TAJ4rj3wmzSzlx7uSQ8Oolou071u2LzO209D/SC2SjDLi6H6vAC0zs8GN4ZLDNBWCFgtYAt6uD4m8ARm7pK7RkltHjR9PP+FgBqXUpUaeVu6H90nlsbSgd0zudMdPnLcnwBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEy5TjUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEy5TjUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1557C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787501433;
	bh=YhS7x5Drepy4cHzeH1//CXXotVDiVZkYktOtGmiMCds=;
	h=To:Subject:From:Date:From;
	b=vEy5TjUOGy/qS5kjFcSM5iPS/Vt0TgZ1OJxVOxT8aOG99dSco1clKh1c3rtORlHPn
	 p9Eo2K4YT28YY1jKNxGRyjeNAs+eZG/O+ofhVAxoJoaJfUAo6QnHlO9+apbEaqFgz9
	 zy6iyStUU5iFAoZS4SHZyCyh1tZXdD/6M6Ue0HVKVKDzx2bjavBdmC7V9ukSDqwmB2
	 LnD92MPxnuXq5oKC2Swen9+LwQQL5cPCnRNyj2FtVEBhsEWqoEXjlbJILj4nWPWWoP
	 HVl7SquyzObkbZBiRWUBJEY58O9bbQ+Lp0nXwzfFD/+APAkNVUlnLcJstrh4yd3+IX
	 nxh6lTZ3WtFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FFC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750143370.9500.9259544404139460266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad56cf06810cf02e71f35acd64b22f92121d78999a734198f652377d907f214
Date: Sun, 23 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787501433
