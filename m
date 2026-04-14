Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530742D249E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776135454; cv=none; b=YOACt6Ex/sdw0NXBpvVx9OUVWAP4KyVheU0wcyWTbi+px8YhTtGt3CUiL67VBfTOTHqn58lwj8j4pLVAxVNnUOjXjn7HKufo+sjrnxdeGCg48NcVmJ2M88kMGQC75J5BNRiK3TNPUXn6FNWgFNFPW849ZYoIXvRgKDkwO4cxYT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776135454; c=relaxed/simple;
	bh=l4f4qt/s+7OgdHgZaXuIZ+dkg2GPgETgN6BTvdV5JtI=;
	h=To:Subject:From:Message-Id:Date; b=Y1SGPPcmOEcOBZt8qWXF5leykxzPDiW5hHvOAAQyuJF+AGYQRRWcJltZj1V6rycH8+QHMfAoiawVARtoLw82tcy5lUnnaVrIrS+QfcPd7fBFjyuens9+v6LVzvyDJ0M/kuh/kiZdbS8njmHBh/iCYW9AqOiDsBIXIhc1Nd38Q34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn3k9Lj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn3k9Lj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8901C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776135453;
	bh=l4f4qt/s+7OgdHgZaXuIZ+dkg2GPgETgN6BTvdV5JtI=;
	h=To:Subject:From:Date:From;
	b=Xn3k9Lj3ZfAhAyDrKtcjkcqK8n2/knxAquxTX17Ow8hOhQByUkBFtkdlyR+eRGRfM
	 7kzwXNTf2eAKQXE/WXDsvarkQNzpFSHSnyvM6+y3tHuOvvZ8AsjqK5OsMTRT9a7PPz
	 jyHgb+KU69k+fl8dsTgKpbonFnyRTfoaB56LHaJKyMb6jKO9RRgwR4NnBSLjAle2AL
	 V0ykv2qXvFIEZmy1SBSyH9PscXE13SiiM+oMCpJd3UtSAxBxtJc75hGt3Dg7dNIR37
	 hdgxtvkYSAXNDL26FqU96+8WE2Ics8yrXYdH6pLb3nSibguW1nMbzMvWOSkeiOUkdP
	 PXSg1ISGsu4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4DF531E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613545368.2450.16136556967350388205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c743932fe743dbf563b994e67beff8f09adb50a13f9ef63f0a16ed7721d4db
Date: Tue, 14 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776135453
