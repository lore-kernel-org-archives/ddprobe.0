Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E9C2D12F3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774218294; cv=none; b=H9K90q2UgrEIdiEAc0G1EpuImoaeMEspPEosTCUe3zp0RlspWuJ0OATn7RMS0gf58I+fDRo0/BUP0hdAm0BxClPU+Rc8UPvScm+96rmzpftbZPaVLb7btKVJ1/QMJq0Ou9oQ80iq9Aj8sy1WEttp4Hia1WFmss/JTCgiSOZSLys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774218294; c=relaxed/simple;
	bh=qka+HYLxGbFKWYCiwTO9xNYHKlCDGwgU2KEbv0Lpspo=;
	h=To:Subject:From:Message-Id:Date; b=T9V9xotw5dAwyGuJD8I5lVx7hfV+UdT46QoTNnuIpaEFNWT1KiMEW9aEgWHwLAsDH0+8Dj5oCCQbcEB9eMcUxhJzB8gitQJzis0nQl7Wj04WX8my2lBjB1Q0LlfXSLP970UgIj/YMZoVBaXuQlk6hu+fZfYWaI+G8reba6O9h8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiiAwApP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiiAwApP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ACBC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774218293;
	bh=qka+HYLxGbFKWYCiwTO9xNYHKlCDGwgU2KEbv0Lpspo=;
	h=To:Subject:From:Date:From;
	b=NiiAwApPPSF9UArOCB7q2VL5RjqnXj313ceBdRBS59ZKrwuAUr9BStL5nRvT7hkk1
	 rgUrjVofyuWZQZsGHe2KQtDTzKAq5GLu2MglVcKmB4sEQaLa2Qyi+N3XNdPFvhxNB0
	 nrEflupVgMpOMfod0Jng2W1IlWYwOHqW9Ryf9JZSbTgUe/q303R12Si+NgsMFqxvpy
	 EjdlhghiH+BVv1ctZOyE7OdI9O3YMOzz5CYHQ6LW+gGOlL3l0Hd3RrGT492SbYm7zO
	 iI5BoFuOmkdY7pzzefI7XaKhQnUQEBXamBdcACC9VvYnjeZl1XgEKSirHxPfKcig0A
	 8V0tDJ/2J8eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136BD58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421829358.17984.2965195842514089248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e17b540026f75770fea08a9cc9be7a122cadd763cb6be752c108466a8b6840
Date: Sun, 22 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774218293
