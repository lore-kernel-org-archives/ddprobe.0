Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340E25C80E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771395894; cv=none; b=i4Isn8cooh9dkv/btVf3+KCznmPCvVJP0qwUKNvm8G8r6NHBksR7m6Yv3jAg+irjpwuDvmRal4bE5JK6evx9FQaVYzlsh5wA0wNvfuNK5LXhjot3ai/PU/f8wJhg6Px4NAzkGenj/0BEfz4iMAhipHq2LTl9F/anA/dShqrTnro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771395894; c=relaxed/simple;
	bh=VWuTT/ubQxDZLlQSIEAoNzliOccSt4iuXJm4jYa9sbs=;
	h=To:Subject:From:Message-Id:Date; b=oWPOcNhJBRXnoWkZhUolohDtWPPqpwCuhuC+TGL+7Xr2akoDFaZAcWiWxF6jc5MBZCKsdPiVMazDpllZsBY93JJ0Q6SVbw54k/QnL678T5mx26ro8khnF4c96/dEPXH0QtuSC3t3FHFa0BH6OFxfUZ/cn3oCDliahEI6gTdNduk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpw/Uam9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpw/Uam9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F3C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771395893;
	bh=VWuTT/ubQxDZLlQSIEAoNzliOccSt4iuXJm4jYa9sbs=;
	h=To:Subject:From:Date:From;
	b=Tpw/Uam9SjrRN3rdAR4DB30LaeEUcYG0SfO1KQs/fPShPC60P9ge0ijRf3hXhpW3n
	 Fq2Jpy3YSN8EtoLp7UQ4yR6G8S0lP3ElCxDRwSEsOABY1EDMeZv7OTeThZZV+We7Vo
	 SJckpnUO6GHDLmFrS4WkHpfb9BX2QHE4RC2RN4iuvZoGIXmU0HqOlaT8Scw7h1ZlJ4
	 zLo2aIPFlfy2Nxi/T5Kzjc7ynUepZ3aHVU0D+Su8OtTPzWtiQGC20xmzgH8eivjJpQ
	 iPz2TpSAY/K8A+MTn7xOKu1B0aX0qWCk1gBYKUJ3L8OUOuh7v1xRyVyFtovx36ctpN
	 g6UHpyd66vxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94781E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139589359.8277.6058210438716748975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa67342e6e68844059730a0afdd277e459eb4147b17e773f4e28d89d82dcb543
Date: Wed, 18 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771395893
