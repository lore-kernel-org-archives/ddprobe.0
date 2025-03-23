Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A0D35947
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742727595; cv=none; b=a0dPKJewv5ohNPzF/arqzunH2EqLGbScqPsIE0sU9tI9iK6bkk/Jk6KXmIkrJUiIsOLNaaXNQx7BeayIInkLbDxKuroPJIzHrFlRb8dzQUzyIk6Ez0QhQ6sn2nnE1rKbShHRci0NfHxm+QPFrvV2DoXWZPwSChclNGGWFQ+tFa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742727595; c=relaxed/simple;
	bh=zqS+zzvCGKlUioUdnRM8ASnEdKxfWibJbqXv9uPkQu8=;
	h=To:Subject:From:Message-Id:Date; b=tNk/Rl+QFQ44zHru54hEg/pJQBs94dW1aMVPLhFZds8cdbZKkQgE/Nt4hJzikvRw+WpHD8EOjaD8q4D6QnMPvWiph4XK1s1J7/JhXCRqWR15rEmLKU3i8B1zN75QwNBGfMeWxFd4Na3UQ6Y3R5F/hf+1NhV+xLsiX5YZXH6h92U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvTiRsqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvTiRsqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA26C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742727593;
	bh=zqS+zzvCGKlUioUdnRM8ASnEdKxfWibJbqXv9uPkQu8=;
	h=To:Subject:From:Date:From;
	b=FvTiRsqoMaZbg1ru/PM28BYiEs2q36jpPt8j2UP4tWKl3YVmdvj9T8BsOlbTGJpgM
	 1ptgk0SdPhwMNX7mHnclbWgKhTGcV0wMDPWFL+Fdm02yzAZZ6Z5n6LDXvKy3K4uQbk
	 wue7mjz+5N1I7xpGXzD9uVsASBC+TTYI4TtS9TLOR+Bar5e8K/nttMFwuAIlxWbs8J
	 gDrFvhm/pfniSs+31RlEDfDD+uRiWpwz34NA9a/VrZ/H7s6D3Yy/846H/GVavzY4hZ
	 BWbTxwxdn9A5PiWes2A9Sj/sC7TSmZBFaRLw3rhxeP4yCXYHQ0WeUp1nN/HFz+hM6X
	 vksIubpfnbPSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB1C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272759359.5584.14560871228091062381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c6a5a919253632b92c38eef7b9529bc125ffcf1ede2f658e9fed3bf9e247ee
Date: Sun, 23 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742727593
