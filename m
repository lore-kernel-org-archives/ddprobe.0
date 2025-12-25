Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306DC137930
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766687634; cv=none; b=aUPXFkgz5P23QnUsUW/nsaXAorNZi7rAymoFrQdhtZHkS1RAv/Yte1ufeT1nKcupMjzfmjcXIFpzIr7STIWed/ZlEGTVswdY2u0E68TJJKx6M1+/kbb9VjWcNeSeVL5GOhwIeBUUZNJm5YzbWbKMZ7yoiGT7FeWj1ua13dB+aJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766687634; c=relaxed/simple;
	bh=cVTRluUZoB6fE+O0rx5rQ7KAFbaQyZL22XEad9iRX8I=;
	h=To:Subject:From:Message-Id:Date; b=ATXJP0F9RWtN1XWq6B9xZX3LGrrtdglMzASjjvkQQ6/aNY1Kn1J6NpAf9xs/G2Vy/4qgW0S4E+Eqw8ki7fZPbL7+hX0URKobxzNE2bzw29xblgGpSIx4JHKd/fxzhX62uFYyKslXUxJgGnSP/gjHfJYEr8Iz4vPQLq4VO0C78xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/BKKUXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/BKKUXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766687633;
	bh=cVTRluUZoB6fE+O0rx5rQ7KAFbaQyZL22XEad9iRX8I=;
	h=To:Subject:From:Date:From;
	b=g/BKKUXAfdfBDQ/gM3oIBVMmtL/YWbWptn/zpzn523+MHf/Df7s0q9adujazP3hxJ
	 Bmsftm8gtC0LFcANhIBKgDKGQySvklDx9sO4zuds6yC7rr3be7RlV6qM33tw5e5Wjx
	 GY4TZax+EQCUTK0GRzb/Fk64RfD6hoTi91Jqm6Wgwl7369Nk85YQm+ISEWkQcAQ3cY
	 ko5Mqp/c8ds2i4QVKq2IWgvrtO1JdmiMaO5YVT+vY9aGSUdflqtkZEJ14Gq43gWkqH
	 lPVbnU3LthMH8eFsvFy4XEkyotSznCOAgEtcQ8i+K4/5qmV9vZBs2MhD/NtG+7sVI6
	 7iGe4CEtS9LLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96484E7AD4A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668763358.1905.7892030575888475045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25c18fbe343ccfd41df61edb0ecf7f50dfdb525abde418c4d21fc7ffc82966a
Date: Thu, 25 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766687633
