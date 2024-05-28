Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CE839FFB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716922463; cv=none; b=tSuPktFy/k+gPwsxX+FSISa8tHI5KZVZ6i7LWN5zUR0DmiOo+Bg3lnl5gSVWFQ0sM4N6dufJ1LUxWTkDYXn96OoRhbRIZxzORHReLgEi3/N+C4AvoCYbp8Vh48B/YsTRdAzfgWr/sk/2GM/3e3NvntB6IKNcoqGDGmciN2oe5hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716922463; c=relaxed/simple;
	bh=vr797LkEYQLXfRsRJi/Qjz3UGY8Pp0kZluMcCWcFjfI=;
	h=To:Subject:From:Message-Id:Date; b=Sga8JKaC69iHsch1OdEvQrQh/48UhjBbKemALmNQ+GLQqLZEEr5Ay3tPL2ndG0IHaSi82yJgzxzWfr4xthzZSuh/7k1qwXdq3CmeuzC4xJ8WCiy3EHvyjFGsRUsX7C4NT5AHJjGwIkV0iLobaN820nhQaY0Rm+94GtToaVc2tzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg+vGv7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg+vGv7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC160C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716922462;
	bh=vr797LkEYQLXfRsRJi/Qjz3UGY8Pp0kZluMcCWcFjfI=;
	h=To:Subject:From:Date:From;
	b=bg+vGv7R9RhZN/Gws9WxlSRfFSSn9wXuRTPnIzdSoGNlaIzkNTmtgTQt5wZSiOTye
	 prtBD5DwjDNmQvz2T1f7Wi4iwJK1JMSDImq8LvihtVZE8Qk/rPJXGgLuR7KkJ0rQub
	 QBSW17P5IePCrOCGcBudF21lPpRHO44Maqk8Ap1RVzEL/UR7oXUtxEFjckrlHKpLwE
	 Ywfda/EhDnXJtUxUJysoWAWIO54xr0wuJvDAubXkYcOjowcneLLO7iqY4URhKYnBQd
	 fDMxsi9y0nqONHAtd0pMdtKlWALYz/P8hYoByNbMX/MNWxnmXZyHGiWFajNFyrgtUK
	 SRjpHOkeIFW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EC8C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692246278.25905.2545796916685578728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecb5dbb5d32a39ab111d7a025b67b549c67f928af47d29ffb2b19b258be4274
Date: Tue, 28 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716922462
