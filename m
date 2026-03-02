Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D303B3BEF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772447094; cv=none; b=kmqOicn5HFK4QjnqzYzR0bzbLl5vslSgGp3Bu6DvG2xanXE3ZvDNShnj9YrTIoWH0Fji856LXyT/tZmU5fmtyjaXWWrNFR9nWRPadVuA6OurFNDwyNO0Mc3KfVLlP7mYkw/GwpRbYxsFSdp9jo2cWF8E4nNCL1qSygO+Sh9I37E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772447094; c=relaxed/simple;
	bh=dTx0UzvaJnu9UrsEChf3vr3XbG3lKMt7hk2MOjCK+YA=;
	h=To:Subject:From:Message-Id:Date; b=FhYfWsrj6mUfJpl8Nggkwb9UpMwSYHDNnbwcFJyaAinLfgsCvlBntB+thjbOTwfQCVsmB1YcEDJWJLzjvmY8p0JHjkWyJtzKx8t2c5HEWjgJYD472mbdJ4r68XmakJQnYoWIVrxRt+/BeOAe/Ex7AxuRSkGZvy0fxlsdIuT0/Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI+qIfv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI+qIfv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9EDC2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772447093;
	bh=dTx0UzvaJnu9UrsEChf3vr3XbG3lKMt7hk2MOjCK+YA=;
	h=To:Subject:From:Date:From;
	b=cI+qIfv7yjkkzQ7iItUWIf1ipFxdT98yDoQKh7VbkQrW9zdxBPHnTUk5CAKF1WUhp
	 XFQIJ9IsYiHKdHX/0XYG0dE8H8jvWSGDwZ58jUSyRSmuByI/pYueZAVn7xu1z5R3p+
	 sx1ZSgYYj8WVBzCRAYYugam0cRpajXVQMR2JwGN+KEmevaTI/fi1iFf2NIauE72wmO
	 0lsaunNdkxK3HlRurv5kO0GS2ziZ4rlUFIcFt++5S8Jw5vtyI8dDi2ZEf+wGcsUhsj
	 NMvM6mDdjAL7LRdKKnnIXF/sTN9D9xtlUA5VPzfE/86JiPNW6QOM2J1kDIVNPMyTFM
	 D10f8W0B6c6XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10E4E9B35A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244709363.6995.15273366786483434129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57883bc95bd31ea239678333095c53f522143574af024b83bf08e1ccac93649d
Date: Mon, 02 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772447093
