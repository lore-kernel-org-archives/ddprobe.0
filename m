Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5731F17C211
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787134834; cv=none; b=iXh3YLa2KMWVdRmLlJ4BXBC27I5H9KfXngFHQGzE7oFgPX8gfl2meGR30J7fNaxOAdvlAdkZRVC5ttgPE/YUw6oJvb2nAQvtdSmwtzFgPKjWOALFJP7UYAORS7Mt2jmBQgWobXBr/GagQd1RXti8GF5W0TSBnfTtdrp5gbhCq+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787134834; c=relaxed/simple;
	bh=HUflUSaBRFGgc/QrHFiFKhFxwKiLd6D2vtUkTo3+lm0=;
	h=To:Subject:From:Message-Id:Date; b=M6C5TyJL9Kh3ap2gJT8XzQQX4Odrk/VMtg3Wa0IRRO6wy6iZvcSgjPQ06Q64mDYBKCOC9/+Q8GAXNaHDFlD3eL0fxvbw2NoyHJRnDVEW3EkGt7wzqMUyNGIUeZaibavSgEBEt4Lxi5ZIhkyzAnQpKdtBmCKrPq/lMT3y5YooIuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OELDv31x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OELDv31x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10C5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787134833;
	bh=HUflUSaBRFGgc/QrHFiFKhFxwKiLd6D2vtUkTo3+lm0=;
	h=To:Subject:From:Date:From;
	b=OELDv31xysWXRp9k2iBoQwgruegzb0cuRSiVAd8XuJNZxxK1Xw0akpMT/9oSZbUU+
	 fn/U/6OqZ7+/v+K257kYzssPXDQdaWadjwlNkAX/Qpsu07HShh/0hV42M5Dj6EL+L4
	 09MqGDoX6PUAXWlTmaKpzakX77y2o3f7//L9dXFMg7FplFdLojV07q878v+ae9TVF3
	 T5eR5pTxNI4/8iJ82lMnL4PhH7R0zny+SmsKb5jV6FkRzuLN6Kj7GwC523ibFdAJEq
	 QYqySqMlroIE0rDD9YOMlIlCJNZ/BS1voefcZlYh4Qye2u34xOTfdCoteez9Ls/kjk
	 xmxgMDLg98P6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABD9C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713483375.12744.14831179055248244521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861e37124bd951ac5d3f62dab0ae88554872724b5b72b3544adbf77ffeb852c4
Date: Wed, 19 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787134833
