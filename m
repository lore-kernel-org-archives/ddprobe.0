Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5512AD1A
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711204097; cv=none; b=EtatL8Xviycizu0+plgtcHmlqBVWPAKRgXuUpwI0dyKgA51GVWtGDYL0QSCkNZyndqtrLvjWZiAZ6Qw6cw0pUXY40Uv//1YzstLHnw3Mw9NzIsy+c/fmrkCDpY9/A1v6e+tmWueljAG1jjb64bzIoRgDkrg/KSmGbjs5QrLXcLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711204097; c=relaxed/simple;
	bh=/XnfXyqOAOf7hTvm9r/L6//T51EdIdglAcX/wKWM4U8=;
	h=To:Subject:From:Message-Id:Date; b=gBfTph6zH8GXJFcfJtTXAmcI8xx5vINlQmLjWs0hluHARt6Qby0fGJsBzT7mebkQ+bL7HCTf3jA9GBWVGBi9MZO7pdACv0jubH9iteYSP7WLo4Os+kqDco2urwfw+qK2RpEUl0ExH27uF6I4kVxfFFAilKz3YxoXSi3QcJEPLQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/BhSRoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/BhSRoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE03C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711204096;
	bh=/XnfXyqOAOf7hTvm9r/L6//T51EdIdglAcX/wKWM4U8=;
	h=To:Subject:From:Date:From;
	b=t/BhSRoHBavpM1TUwno56+0CEp88POp0xbHy+gGlqTW+jf1DtFeBUR/ByqZ/TPg9t
	 xM2lx6Ij66PTC3DHgY/DdohuCDcKhlUQAOtJ1YAYeXOddsRJp/W2cA95jzGaAyaTlO
	 v0I3uueoqPt6d6fyNgj31WTFX9x4UgfLiyQa3ZN2RHUt6qrwkFZ26VcNFDXpyoJGNF
	 g71V5eEA8Oe2J3O1KFdxG1bBu15Z+r9lbr7hF9pcsoH3SbFJbJ0J9Vzh7OaAUpGcSo
	 llsMHaWnLi1skIsrb7K4Vjg/V7rNDPf7DWPeHw2mktUzDMXZdpk/DpYazZIrHpiXmY
	 8VMnaNldSpRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C50C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171120409638.17227.16922375608707453517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9719f5b4215ed1141907ff4b631c53aab81d2cc373eccbf00abff554ab95ca
Date: Sat, 23 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711204096
