Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A4E20E030
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776614854; cv=none; b=hggf9bRJFB4YeaiIU9NBdbWvjACSvaG9CEseZ4xGn5eBaGK0XjBNt7dyAY9UO9TGWK7tPbLgdeZqBl8CLGbGmd17XjdFYuCiDfAood3MnjiOH22YPmipiaTKoHiGhr5Wm+ZbPowL/eg60r812/WUUcREanTW5nkpZmRzZIrXocw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776614854; c=relaxed/simple;
	bh=xD3Ov2/HwfXny9GE4HBPLSNWncVO2JV5wkKuD8ur8Yo=;
	h=To:Subject:From:Message-Id:Date; b=IwgFOtGJ1j1kKjww1tSDyMfN7zMXoFwyvJs5k1FZrWNCTcIj7716DZmJq/+1nZjI1k0Lx6p5TYKi5FiRE7NVFcHh5sTr+38rIm3O5vlVU5b8BRdRf0PMldd+NnKQrBWZX7vB3CQxQPrHgIJ1/oRKsfUYDHTrLr36aoEMclkk8dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9oPEomd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9oPEomd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFED3C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776614853;
	bh=xD3Ov2/HwfXny9GE4HBPLSNWncVO2JV5wkKuD8ur8Yo=;
	h=To:Subject:From:Date:From;
	b=P9oPEomdSOkqbEjBCoA+IrmeCLutdrAFfMlFwffSS8c3R/3D/cDU1UZF2xVyQw2W7
	 1iXSrplDnK90wkVILtCJnTbc+V8ioLlNSFYT7PyjKNN3vhxRKCah7D6UTOHgj0B6Vm
	 641AfyilEGcPoixdm8W0R+SZh3eieMiqGhRpa4AY1vTzaCPklb4UsTYC45OX2AjlnK
	 V5SIB9TbMVbMpAUOuCHm0gxnwmissr0rxqCJezie2m83aagJJu6jjQql04OqHwTAgX
	 2tQaDL6N9H3eOgju8jwuWGkTHG7d7fh7hI9fu9Lm2bSDHKNHTFuxS3THjPwofeI6OK
	 FeWjcLeEu4p5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9FEA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661485368.29197.11584967457349874917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46717df8d7fed0b05e9344286e68d2c308e84bba14b66d3dad36f9ba822f3089
Date: Sun, 19 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776614853
