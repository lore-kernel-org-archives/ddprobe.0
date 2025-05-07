Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3937D1E5B7F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746598794; cv=none; b=CKFhRshw/EYlTzMaHrs/g+8nXb5BVaKgAe/OTXkMAGYPk+ciZGngAGFUMbeyx6Wr6hJK0SiEoEjebFcLBHdX+p2HaqpwJtbgumABpQ0LBkX7VKlE7oT0RZGrP75CikUzb+z6Ad+52xe5ur5KlZ36ylRprZLXq196Z6YIlXJtnIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746598794; c=relaxed/simple;
	bh=CKUUsduTy5LUK+EVHpXwz1KhuAVabXbmoMyFL3KG0Bw=;
	h=To:Subject:From:Message-Id:Date; b=OsQXgBlDiG9BkBxScYSwRFyNljJu3cBwnYrsN6Cy+fsQmmhSKHF8GzJVCApZVK51SEG1f+VCxUdcmS4cEA5VNGpwdbE6A6FVRE+ibr9J5v8igOzwAlFWvigWEyZOjHmWLBkZ4xd3mfpNNaFVacMeK3CY4VbLTQx4QwY1GUYPQio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEOHESS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEOHESS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5BAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746598793;
	bh=CKUUsduTy5LUK+EVHpXwz1KhuAVabXbmoMyFL3KG0Bw=;
	h=To:Subject:From:Date:From;
	b=dEOHESS+21jY8GXvUYaIpp1WjWZZ+z3ktcpB9ujuCcW1mBq8XrrO833Xfe2QYNpg1
	 T89T2Wj5a5wdY3Rhng4jNK4dFS2+652iPjBhr1uJIh9qSThjFUr2NJpyuFyhOafiv4
	 uakhgegPY4HxqprJjkc+j308eJp+AVXEXNSRAPCRhqaN14zlstM1IQ0TEiV7R2j7UY
	 Z+z0WBf+b5Nb/U0ormUSp7MHoYAqRiSDeUxPtpXKNkuWnkxyFx5lGroaFFR4MRUkQ1
	 8VpOjjX5A+ZCTqamaTUmcs8vEHMwQ+5v+ZHlIYm7r+7NuXV1xkiA73MfRKHiCOllai
	 U8l38CO/kt57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BC3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659879357.15676.4755162216993266592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea33604d641fba0d31e748a15bb3eeeeb044c256fb0b5c615eff3e41dd919736
Date: Wed, 07 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746598793
