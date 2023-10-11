Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A13A3A29F
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 21:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAMZgnTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697060228;
	bh=AxeUaa+OodUkXUuq5uPu0ToP9bDqFoQp/Z4oLtgqXLE=;
	h=To:Subject:From:Date:From;
	b=oAMZgnTTQuLj5C3OZjtDCTwxS3rmPh8wMtZZpw+t+ARJY8oiwC+P+e+W2+tL4v11F
	 XECGouIGpHnRcmHHc1s+oGqq7SnevVU9cWL3zSZjUjyIzLldoX9PQ1vvM6L6UHV20R
	 XoxXzLds3a4ChKQaoA9Ooia6rJqHMmyzyGm4CcuOPaqgtuucZutJSJLxk1meirzxG3
	 7KSWXKE/cFhIGEOzBo/7TAkrbJsnGMgC0p0DEP/QZHqavuQ7FaQn94aiVGn9SZHjGC
	 Vp/XS4N8mGvDQQCvj6JfOQ7qzlpny+7mnXRWkXZ4ZTDErfjYBuvg0e5OqtB41Ole0+
	 O0BSQTVuO49vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1347CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169706022871.18036.15474303774999248785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3900180e45a6874ab001ecdc9f4c6032ce246b5bc9a704b3200a7abd7f556b
Date: Wed, 11 Oct 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697060228
