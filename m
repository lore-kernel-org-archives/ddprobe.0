Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660EC13C9DE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713992483; cv=none; b=AxdCvr9lgYIHWxR+I5Jw8ePL/OvyvrAjBS3zFmYJ4tHVX0n7WNXUhpSZXrPpLDjwm9ckUEIezQWYT7tND8cQ2o+fZi4JwA374zUKCtSgHLzfXXey2jLnVZCedqcvHXRyyMENdpXVTOIOEL52HDYE5Yb1YJDNWJg2uZjIrUlH1qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713992483; c=relaxed/simple;
	bh=HqVEuFbu4cFuU/ednA8qT5IWk+y2y+kkNcDzgCOzB9U=;
	h=To:Subject:From:Message-Id:Date; b=t24KTQwu0BSL4nWubzN2Ex72YRG9GIWuzwQDaKo4TrnZGmlZQLA74mfpiOIeJ77Lff3TFWsl4h/9U48qBu99/9I1yA2+09DK3ec74nvyyhdi8kdtpye4V6J9FEeON1g5gh5UkASNW88abhHPRTHisyJdwt3Sev6HAocBdflrwvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQc7zeCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQc7zeCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D3BC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713992483;
	bh=HqVEuFbu4cFuU/ednA8qT5IWk+y2y+kkNcDzgCOzB9U=;
	h=To:Subject:From:Date:From;
	b=XQc7zeCN2EKNjBj8eqEoHaRQihMLrfHFljTV935Xi5iEfb9qe+OfmiEET5zMDg/s4
	 MqtyLUGzUGhvPiT7azOzfi547IjlJgtFcUMmtcHahfZefM8oLStEi8e33aNFMnbxgW
	 Ceo4Thn799MZBER66TQx8UbKpC1CVvtgsqxia6e0SCKqM9Ys6UQfBrqwKqWkdNHZq5
	 W1j2hqJ3yWC/maykH254q9HHQ7lOFWM+iFhyAF8tyyB1xnalCELSypdUhsGI1KMcOZ
	 2GXlWNUH+guae+ja+rQ7iBI4Y1HjUarhNDMWFwqOyaCIhI/swVUCQBE2QL+NWn9eYM
	 Uy90ix/YqO12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9035C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399248287.19038.4969215778294772327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fdd7c8d95e94f4fca51d5430497f820a984dec5d8847ad56c3d5b6802e6193
Date: Wed, 24 Apr 2024 21:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713992482
