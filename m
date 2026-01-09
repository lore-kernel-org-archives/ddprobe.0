Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D860533B6F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959633; cv=none; b=Pa0ep/G1k8ZT5g4HjRIk3iVy4SWoHQEn2dzHjpcExHtmcG8hR979gPFnftpMrM8cryyVsOyXY6ntai/FE/qjU59msciLle5fFUDkD0/x7XywPmvQQU6+Vfhsmg2jPK8kGjj41PNsqM2e/dDwor2FlezUzF0rm6q1jovcIIIbSz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959633; c=relaxed/simple;
	bh=ETEo7udC6HWtlCXvAihqRpcXWMQpca/OUL/QUiyoMqs=;
	h=To:Subject:From:Message-Id:Date; b=H3PUiE0UaLo1DrXKZViPqlMb+NM1iWxycwS+gWeebm8IWW+7pBkT2g4jgt9TPqJr36Yq1vQ5ucGOvHOxnsgQRE1WVpxXl8y6i0GF21+hsbJFq3ccCXOR57nbvMlSloPDMelzTeIET8g3HgAp15gwuQrpfazS2LoLJrKBNemdFOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksoUuGmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksoUuGmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC9CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767959633;
	bh=ETEo7udC6HWtlCXvAihqRpcXWMQpca/OUL/QUiyoMqs=;
	h=To:Subject:From:Date:From;
	b=ksoUuGmxpuXbzjG+Gwujb0LjoaBqQEan+yRlpsT9OOFFimQsGDnjySuLqGr2PUmsf
	 7oC6twPkmo7n8Y9evYp9ANwhrKPKivwxhU5jo+Ka9vSZZ/wXlxjuLwUDc208eu95L5
	 iqSt+CdDWIxINL47gNdD9x2ybSsBpM2CUTkQyTFXkbiuEhZzoNzR+AQyuZFiRyqC6p
	 ncJmYU7Whf0e3WF9h3kCb+Scb8EUcb6zRa736KKKkYm2tZcGTMTJuv7twKnIZo/Jzo
	 /ag8lzFsb3RQRW11PHkwOn0ryOsWE+5lQcP0pXztENAMufLOPOjKrsuiF4PLFNCeyA
	 sCBWvJ0Np3cKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E999D1681B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795963357.15836.13257731011684768652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b781657c2a7e0c82362b48081a8a43ac9273b37db20c4a660d23d01701cb95e
Date: Fri, 09 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767959633
