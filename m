Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF81E1A17
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764271974; cv=none; b=cKseKJeQyEDjPA5Zvg1XVHY8ExnqSZ7wmwB5bi6uyTjGVMj9DAZjJGjVQncPqevkCfH18Uq0e5VKv1jAboqiUoHJbYuDnLlc0XNcTOo3g6jaeA7YzgPHzTzFmAMIol+5rMW9heiuKhRj1WIRPffxMH4ZJ1PbzqY/UnIoO9iZfnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764271974; c=relaxed/simple;
	bh=qRH9yIqn5D07bAzxDu91j4+6wpkvQzHhhODaZfZbL9E=;
	h=To:Subject:From:Message-Id:Date; b=P6NSGckSzeadl+gWMXVXpwDnP5ECNLVU8tnrpSWgSLodTPsGl0U7ky3nEB5Urs9tv2A555jhm9E/aR3k7V7NPY4kx1mPDhZBh8r5QnQu/sUj3nPVJx7n86IcATIlKDbCZV4mZZe4rejiLAGkU52gks7mqVe7OHNfBJY95jNIWo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfjfsjFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfjfsjFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B3BC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764271973;
	bh=qRH9yIqn5D07bAzxDu91j4+6wpkvQzHhhODaZfZbL9E=;
	h=To:Subject:From:Date:From;
	b=PfjfsjFzxdO4CnZXu+EjWMn6muyb/kDqMxzyL43IcNQmKYkc/aJzEyOJaGrPNTB+9
	 qVesDkFJt8jzfO8rS1saUgeSKyDPDHehLNcn3EdecoT7PUkiuxxlFimveatmmYpqdQ
	 0KhbU+eCYuDUQgfpf+W5ZUQIO/ACye71r2cJ/76sR21aQ7hntdqvgLZrFahFzSxi9r
	 PJ8eEGnkvgYP5kXicyIjrACKobWrcvwowyQYjqFWEY4nBRJJOw+G7qTlcRGj9SibCS
	 aiWMuZObPdQWpbdKxYr2/n/KTxyURfSS72fnPvvsO+ghgKQZcvqVrCql6fZYxDAXHI
	 RFVZn4Ztq0BFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CACD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427197358.3593.8854748175575552797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135ceed882b3c9227fcc1d271984dd937f83836ce9fa7eff933268795b56d32a
Date: Thu, 27 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764271973
