Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CD2284694
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746555594; cv=none; b=I1ejKrsgYWXjnIm7GEWbqeSzm2uaIXgFBWFoPPQUzye+YHw9ox16d4DTSG6stHSa+i6zESKWITbXnLWO+gq3IKpMy6+On+s/wAkg2FzxGUSwi3mM0Smq9gsVHAg4XPAm/Qw/0KBZhne87aCjBO20E0/YaFYrcHg1H+PeXVjlC8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746555594; c=relaxed/simple;
	bh=rP6NhF2w1C0LTJQhepRuBahPW8nmGc5R2KwKlEKTY44=;
	h=To:Subject:From:Message-Id:Date; b=aqRYLu7PxBpvVfRfxgW3/C1ipDWAjv7O7Ep158jnqu9t5UucNaKGzOaaTU5PMNOhjRLWzrEAh3d/OqpsqGVJqNlmY7iHWZaW60ddgrVf3RW7UgwLmEJaIUrLkZ4uD7tH/yK6Awkqs26hWITGc5LI3h0AD57kPurOS0rPvZnJstQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f96WzmjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f96WzmjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94EC9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746555593;
	bh=rP6NhF2w1C0LTJQhepRuBahPW8nmGc5R2KwKlEKTY44=;
	h=To:Subject:From:Date:From;
	b=f96WzmjGTsuEJTGGG+4TPi9Fx8w8/sg3TpzE+ILDHEvLgvIBva66dN0JEyuF+6HET
	 FFDGaEcGywkNmEkFBRncwwFBUO60BwcX5ycnxIzROrfDm4DaKhuwD5SSi3BFMn7Vtw
	 eyezAFuzONaddeAyrHcyh42ShCGXTfm8ZkmQdmgzWEBdTDeWQRmNXKfXHb+nQB6Tc2
	 WYXv80hQugHPTfV+M5hUWJmpVNnUZY+W78KLZtPx2iyj/apzuvy54HfiCM2bYUM+Rd
	 sET8uaBCKW2KFvjd8teQFIC3XXkSF6hI1VyttuNSiYaM1YcgSFxIECYhgwUO9foyvz
	 9/TmycoZ1hQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B7C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655559357.8505.10405860436739553393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1d81f0ea41970791275587721d75d8c01e79ac7165c8442ca682322d2bf7f8
Date: Tue, 06 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746555593
