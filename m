Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720A28F935
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749046794; cv=none; b=mlik5AKhtiSTXG+ur/gdE/OyuDmElvT5Ss+iJiBlWa1+7xMDcYAKti8xuGpfKT56FmLlE9UhDfdziKa0U16ix51jk1buqWJHJvg1ql2z+oY0RXnJde3U1ZfUiF4pFjhb9hVd+v4qBQRGRezHc6XvgWndOQeB4lMM3Fv8D9Htj+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749046794; c=relaxed/simple;
	bh=sT7/h0huCD6m6zoPD6lNK0emJ5D/O5IhIs5eCdaohgI=;
	h=To:Subject:From:Message-Id:Date; b=SjFJMYTvZ9GWBWsIBN7SfDFDYcy7r0jfT+Ro+81lBV+fB2znrcN5L6AFeabNrzs0Bp6pkhY7nPhV70CeS9q/UexYEVsDPUqbu+r4fWpBoA7gaRR4U64KD6np/m5dO6yoDWiz0FnUwH1wvyMdPOWdWZEgJ8JCwdhHCAWDGdvMb2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc+ej5mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc+ej5mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749046793;
	bh=sT7/h0huCD6m6zoPD6lNK0emJ5D/O5IhIs5eCdaohgI=;
	h=To:Subject:From:Date:From;
	b=Bc+ej5mUd71jtqRKSSlY2H3KccaMBU+g9kKdqa0OJknF8uPDhjMSLQtyYuTY+Fnp4
	 0qecGuCzocEH9KkZCAeHO9DS8x+LYu+qhdTIJTm8m873mnVsEVTeF1A3SYN8sBbWSj
	 4YrsYUzjkawX76ntoPpQp7Bl6ZkpH2BJQiIavUB1pB2O9NSiHlp5NMOa9yAjcPlIaL
	 MSN5BOMCa/omEKQh6mXd2KeVmPgsm0z3rerKlLLsPI3czfPTBiYwi+hd0fHnTSAC9L
	 +tHBMa7Mai8w4ojIHT8GcDJbTzCPnW0uSGJfn6hj7P6Xn1DsUdXxo01/CmXeYgiGss
	 pEeRynJ8VvyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9701EC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904679360.9659.14416339811902298711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69f65f89dbd01709df785aaea4819b0a0cbef18763c4fd5a35271255bb7dd3c
Date: Wed, 04 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749046793
