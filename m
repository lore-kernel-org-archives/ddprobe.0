Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C336D506
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941874; cv=none; b=sWPaTi/fcbEa/NFKTZ1owvF9PyJvWrCjjxSBWVfmKlYcnpJAo3OQb98ezd/5o2hqYNUN/QcBC3p0iBmmToB6duLgLCZMmSOKaGzVbmQKOBn9tJ3plf27afJc6WhwG74XnY6jqz5D2EfncEnUy4Nf6Z9+vJq/dUqNCI5bteT2fKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941874; c=relaxed/simple;
	bh=98rSE7AbRSaWTx+xbaGZkll2xff5sKgovL0ZeY0RRFI=;
	h=To:Subject:From:Message-Id:Date; b=KMsNZRs1CPNUobWSpxbO5nLyNtVaKaQSw8UyYnPWbLpbln65cfil9OpJsdZ2Empr/oeYgmtfjo2/gM1KqsrcATbLH5DmBGcOetdrwXGF6BidWIirq4S376xygKI8crIFwFDhkIxxBYBbH8zw7NaxU8qVMeERUuUeAw026bvXzIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBRylt5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBRylt5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FECC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780941873;
	bh=98rSE7AbRSaWTx+xbaGZkll2xff5sKgovL0ZeY0RRFI=;
	h=To:Subject:From:Date:From;
	b=EBRylt5Yfk5zAXOv81zPFAfxN2F+ac2cQ4CVo/G/DU3R1WjGseVKkW3bBvBcXwceZ
	 +/65qyKhPczKKl5UtuyQXG+LjIC0mqed7O9K6Ybn3XR3vhExSghF9jx6yrywEEB/u7
	 +SL9JO3Dv8pkxiCat+CdGteTzeCYPSnpCaRD4Eg8GJBFrzJd0xT2EUmxJ46Ua3n4Xp
	 XaH4KbdN/0OcuZ0wGIyc6Qe/2j9lE8gV4y16n/JBUudW6ptW7NPTeUrLTUp6uAjrDC
	 wkkUfPxbhFkhegK+H1cHUOu1gayT0OB4HdXm1OdVzStfgZ9fZdjd2spMuF2Qw+GE6r
	 ZK4LIxZcRf0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10BDCD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094187371.8352.362449270894856429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af67c8c85a9bad85dba205c929748c2bc6cb2186b2a0fe7fe77278a39b44bf56
Date: Mon, 08 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780941873
