Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EBA33EE
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715307743; cv=none; b=Hf0ks1dfkLRxW0PY8NpGPX5UfPxSifwOm0unEvkjrQjXLUkHcyFYaCHw9GOZBiFDqSTjGw7gSLDZ6Khuku+N2PXKqyCIc6qhGLmE5WZIEJmZBW4In97rTV46OUqLOSGvtIO4kvFZDEtcXEW7gK6VcKAH+VwaacUFWozJm+7ZDSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715307743; c=relaxed/simple;
	bh=0WC23yrVjCP3fm7osBqhrkX18djqIGV5LZ4u6l0gR3M=;
	h=To:Subject:From:Message-Id:Date; b=ofqXsBQM1VWOkA1r7IZmF3kT0SUs7mFzluhpptZXi9dcBX940HlMZ8AgcR2DqJW7x5wbwXFpdfBCEQF5D+kuFps0tJnuFFxdq91C8Ree48/R2PKuI7Ax2it1iJvdluJlQpK2zhSLbpsuuiM9zkJlq0FJ3LukzC01ayu9G01dPa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9uaENG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9uaENG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B2C32781
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715307742;
	bh=0WC23yrVjCP3fm7osBqhrkX18djqIGV5LZ4u6l0gR3M=;
	h=To:Subject:From:Date:From;
	b=Z9uaENG7qQSq9PmvpGTk8+iLkdcQzTOVUx2zPntqnFiS1pQAbvteIyk9LIjBdPSO+
	 ynmb2MY9Z3JtDZJZFSRa1R+W9VKENIsRAysqNoC9qlaBFQS+5E7viBnHilLLm7jfRo
	 cmBdnYHXyAoHP0289M2SizZAKR5EPuPXgQ1cSJWAGwxNYLSk0fuufitXyHP2vxhd4g
	 99I/0nliQf3hgBLXiAFw+Y9kU3QPtrEYj2f33DwTSkXXroWt2ZIgJCUn0PXkUBX/t1
	 g25QPwLlbY6ZfU5Wm63w48X7KYcn8C3khqLHha3xA6uN/jD2yl2fBrQ0Lq8mbkBFqm
	 2z+71ZdsxO4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14EDC10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530774278.15532.17965040425410683283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570bc58443d45cecf34172823f7afefd24eef26038bfb896aef17288ba5eceb2
Date: Fri, 10 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715307742
