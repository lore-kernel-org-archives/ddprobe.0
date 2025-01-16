Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305F24414
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737007554; cv=none; b=Vvwo7bqWJQsRbTVWEwVTqZI1yRAVCrdq3/cOZ6XDAIuIJiVoWgZlmqIKQsQZE3bmRAJH9if8+Y2Cn81I9RY2/N89SLTnwvji3HFOpq5lEPh81odw1fKzeN1MmIUMySk1LkoVQRYjlakIxOzWOTx9GroOFxfMs4k06L9coe0RiYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737007554; c=relaxed/simple;
	bh=+WCBt3kKCgBxzdlPM8JjGRx61GC+/iC4L2R0udy3IeQ=;
	h=To:Subject:From:Message-Id:Date; b=LAlIKQcl0Ue4ULRjcDBWQoLEEdHEciSPpOLr6QEN82c0zQHrLep74D6Vz4a3y1/DUM/LMdnPzfwRSHr+ofTjITjO/zcwvaOvCOuYcKP2pzcjsDnUqipJhkIE6RbsuX+zCeUYjo4KhysmaV3G8dA5UbmVyexnPJNhNu4ov0vR1q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKffe0iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKffe0iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6265C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737007553;
	bh=+WCBt3kKCgBxzdlPM8JjGRx61GC+/iC4L2R0udy3IeQ=;
	h=To:Subject:From:Date:From;
	b=tKffe0iNSb3McqQZbhnZ8V2c2/RXJciBZajfVii9R6UrpANboEwofo8flo6JeLFE2
	 epazJH7M8KRPcL1WQ7AE96eUv8v8jKyKfke8TKOaPlbQWfqpWgLGIsfkrMXss9M8rn
	 tWfjQVz5dYyD79p77NTQWWKUvLIfUtNQFIBAO96b2mmY1ZrMPvfMeY0GXRjmpGdATa
	 VH4J8KARfy1dVAFl73jQZ+fkmzLcZ7smD2SbhsT3A+cPm5mPQU9j/uPHWQAOUxS5TB
	 J1USWB136xqkBgO2WxUj93Yt9L3k6wkP2O/TojBTXSbRs/eiZQyPa+eWKh1BLuPWzk
	 cYGK1VsIseMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7BBE77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700755358.25733.17845404527934260577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dc60f54dc82133b4ae718db1634fea8745a8cac05d0dd410521e1ec1e779af
Date: Thu, 16 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737007553
