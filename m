Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F9418638
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711315696; cv=none; b=K9dQxYc+8q3OrpvGZ4a44L5/UXFnc3gSQB3967aB0pxA3glyTFPgN7TUAIFQvUA9MBfOCPBhPvi1S8pHFRPx0HQYT28Ytwa8SdacVpicd2H1qLvKxxgtaKawP6OHx9Ho/goYb7nEzVtJWAcAjwxE5X7mAfLYMq9QtUMQfJQ3eqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711315696; c=relaxed/simple;
	bh=/d2sRK0ReesQNw1nZo9qYft7jGyL6nil7+FMDcuWuYY=;
	h=To:Subject:From:Message-Id:Date; b=WMKRJeUMVg6f4krJDmO/h0CPKITBGWEn3R7OJ+9Ey2Ari22cZl7wLYJljkBTTDm+VueiKMtzRhlUTb7NwjyHZQnE4iSRcvXZvqEv7mLAQSLJasMD69u6CGOn7Tbp56CQsCk2UPqsQBvEydYg+qeTCy34Ys+AYAsT5150c3ul8q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7EGFVSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7EGFVSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 941D3C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711315696;
	bh=/d2sRK0ReesQNw1nZo9qYft7jGyL6nil7+FMDcuWuYY=;
	h=To:Subject:From:Date:From;
	b=J7EGFVSGR0tVYD/MyNAEpKG/yv1goQ43H8LGFdLs1spnwS7vEEL6MYHQ32/G8v8ep
	 ldw/bJdLaqzIodTTQJvJ2cWrMGbc49c8coDL0C7UvbUlLR21l4D9KnOleknzWLYmDc
	 3ZSKg0kLYV7mADpoqDrz/Dhq8hQmL5B/8QtjIdigk9Bs9NctPZ/gvdi4v37+Kai6Z+
	 cGU4aORmzy6irIfsL3wKBrZ1Odz1GrQ8W53zJ0vZ4D6QIpW0a1+fYy5lH7FKwmcql+
	 SOLlXyOCf6sa7mdan+WoV4HCvGuxE2GznlGMBdw2sg2t07xX2st6O6v8be2cFBdcGS
	 UXfN3cYe972jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79250C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171131569646.5200.3541245140791422324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86557219579ca26e5c9004515300e8d9145d369e2197690ed43f32c23bf34424
Date: Sun, 24 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711315696
