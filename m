Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709E202C47
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742246394; cv=none; b=Gj+x8DQAGfU7fRn8KnhdFH8DwukTcCgUnaFr1wtTc5F8fxCQekjJtR8vTYK2ovQP5OOYcExXTxD5ue0lcXA2qCimoLNi2DahBpLxg0fBhzrM6QMwv7h72A0nf5Kf3jd34y/+JX8VDHu+jsbNRFw683GT+eUArY/+jEFDXZPiF5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742246394; c=relaxed/simple;
	bh=b1hJAmyHqXGbKXs2EdiO4d7Xv7Ng6t+Z8+hT4+hpmLk=;
	h=To:Subject:From:Message-Id:Date; b=UkWOrXXMVYXJjuKYjXDU3t+LVVCc3OdzdeFlhySSzjoJmOroJQB6fuDCBIXFzJgHolxmqSpMyPAkE30H9nY1UXxICDRdwDXTVxYWTYE78mKlv//4YjG43eogfLU2rkwJ7M+tH81ENdZ3BP9c3vejp25k7+3R/Nd4Gtd2l/GN4eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icrw5V6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icrw5V6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35B0C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742246393;
	bh=b1hJAmyHqXGbKXs2EdiO4d7Xv7Ng6t+Z8+hT4+hpmLk=;
	h=To:Subject:From:Date:From;
	b=icrw5V6UKGBG8vjzFLV9MRzWeUcBKKCBCD2d5i90KdwwTn+OrCCg0XGuWEVhgT1fp
	 9mpli3sl+rbtf74GpvPnBSwewP3M+vJWRyIhodIL1R1156J2CNlg3JpWOjMnc3tti2
	 BHbja7oqG7i+akp/Cxi/mpvkQ7C2F/59CzQX7TzTPbK49LQkmQ5yTBaH2XTzq7aCUw
	 SMyqjmDXd4mDKWddVS5pC7BOYyUt8uHLblcrW1+RYrMZrWlyIyUuJ0IPwXsCMTSqUY
	 U5lvDwqTBYttX5YmB1OTft8sQokBGIuLxkqmNzW1S/eBx/PrUEtoRylwznMD1Oa/Yc
	 +JcsW3+sZMiWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD59C28B28
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224639363.13439.5527375350612843724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41811c0faac4e038352bd74ab87e9d0e106d1be85394399e54daea796667a6c
Date: Mon, 17 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742246393
