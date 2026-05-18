Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768C038654F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779082236; cv=none; b=ghP8kI/zMKhXNGPdkYkjizHJkKjzV07cjqtgE+z8WE5QxOapeID6ryc9EPyp1Bri99VOwVVifU5E+62H8PT1DOgP+M9C5dhHrXhRiSAFH/6g3Dn+hfvuXY6sNstKNS0K1erKlu6GmoyCgiywe1zIxf4nRX3jqrb1nsi8LEvy3eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779082236; c=relaxed/simple;
	bh=LzPHHDZOm0+5R0o5TkqILTl2D2Z6jyilxncPBCRAVHA=;
	h=To:Subject:From:Message-Id:Date; b=RRHk8ZxUMOAw2YgGlZ5I+zw7cF6rSbbFqFXxvgcy12q5Nd429KRmvb1JksReMSKvIRxtgIbcgqLKew1DED5iTxj0W54vyBv/B7g80+1azwb5jXLy+fi4iOduV1oEQEmnFvigaxL1gUOtjq6+hq7CE8FWXoJkPKOpmLzz/pHW0Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVJyx+xE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVJyx+xE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28A8C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779082234;
	bh=LzPHHDZOm0+5R0o5TkqILTl2D2Z6jyilxncPBCRAVHA=;
	h=To:Subject:From:Date:From;
	b=oVJyx+xEnO+zVLMpAzOzjOrYBm5JVoHbz03STT+q0Y3m0YcDvIUI262zSeaKWxMYM
	 9xprgJGpFNkOYHxaiI37icecjldHXp5XrtkdNNgp9ywPVFbzNNyVzy7lGo8axUgP/4
	 ZlqWZ1DmFOwioNvBgurmyLkwJ/IeI4Rzi8tN23LTDuSp0DAckFDyM+/mQoUFNpAQ6B
	 vL7cRUjEKyqsge55udZeAPrp0P3mU6XZ9MEivLXnqUUw8+8bw667CONrrQXz6A4eYH
	 yWO4c/UqS48QTok9cQWJHeM4kTt/GYJ6gClAHRtKOJB/OsNq5sazqTWyU/L1o+/Ort
	 X+3KPueXsg8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20F5CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908223371.18666.10739848823705235187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934d10cc636d62cb87238488eceac0d963877b3bf34d7dfbf239d58877d515c0
Date: Mon, 18 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779082233
