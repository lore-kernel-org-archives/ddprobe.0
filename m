Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E83176EE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782396454; cv=none; b=il+z2xRY5j2eia2nlxPjvyUGgWSOtTd8i4fsYgyBLR9xICMAUfVWKvBUhO/3Nez1+jvavUk8guC06/d3TCI56Qw/M155aaj9z/u8aT3eeJz7gZHUPvi33FSxljSoicE9iBP/2VjnEv1OvkHZaBQhn2WNwvsv5eUzBnLJsKBTLZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782396454; c=relaxed/simple;
	bh=MsGmO6IMrqnnjL7LvhHO5Jt1I0/TDc7Sj4LfEgbfWYI=;
	h=To:Subject:From:Message-Id:Date; b=kRMzh3vgS1apNHBaf0UAgxb9iSDSNeWL189VzXP2AneHpNmisegCv3cil4mxu1AjFETSaATHDS+86lpazAf8a2eOrOvz3eYHXK9mRLKx7GKBK2nOthHnmeZfwXAyJY/RB7mRx6WIHk+4wPAhY7/r2EdfmmZHAVn7ACUYU+v3ITo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0Dgx4Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0Dgx4Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0890C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782396453;
	bh=MsGmO6IMrqnnjL7LvhHO5Jt1I0/TDc7Sj4LfEgbfWYI=;
	h=To:Subject:From:Date:From;
	b=l0Dgx4XeX13jfahWwD0vJ4552xN1mHhsTyh9lAAaPdJZvaeUcb2OSKdwOFAZQ34In
	 pi/Yt9kmzRPM/IeCLsq4pKLRSSXUX8Yj9EYVLAc6Wx9HjpXp1sBHEx9LXAkm2ww0xA
	 Ay6xShkn0S2gpboPIU3uQMlD2BAan8vHazSqH3q906b4hdEd3daSIK9Vi1kf1m31ox
	 aWcLHwh7YCnno0iNXb5uiC2q3vMKpt4di54/Yckmgr8RvCL5E+Yx2G0Y/p+Y2b6ca6
	 bPRGEcol8t377n+hlYAoAMVfD5vdqiCMwwS0TaHeoJ97LGm+yKyi9nSUhfq5YHHT2g
	 AdGM4vJgOILOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB1CCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239645375.6344.16550391445027317129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0db9ff8f4a16c16b574c1e87b86719685b01e6f67431b9f8547c26dd23cc7cf
Date: Thu, 25 Jun 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782396453
