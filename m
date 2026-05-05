Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6A61A6805
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777956454; cv=none; b=iLlFL1GiVkKluXI0uxOh/8GMU8HftQXPUgEAAAWAM/05y7zf0h+rq3Wx93y5jZ8fQdbJihCEfbN1DKoZS55Pv6zOATam8BgxJsGQrEwI4wvAwwp0HZng9qrBuPsKDI92R3vyS/7N+MD3Xql97OZf8EPAnhnsVUjfSqao4qHkhEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777956454; c=relaxed/simple;
	bh=s4HiPSCgQYAkuK58ow/XT6XpTsAvALxOSCAjo6RvLvI=;
	h=To:Subject:From:Message-Id:Date; b=qd2G7f7I8vt2twmfUgoacsvFFJXiRmhNqpkEW+fFZKDi6FqUD9pbasdTkAPn1mZhOVjYwiHdvZvj8kB/2NL+lPHoL65qHa7IVXaGgGZU+SbhARD/Gazy0Z19C8ODoD1WXGSl5y/aJW8cg+Zqfbnok1vEIOb2bOR6A/lg7Ib1Lek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqEiIT6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqEiIT6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F20C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777956453;
	bh=s4HiPSCgQYAkuK58ow/XT6XpTsAvALxOSCAjo6RvLvI=;
	h=To:Subject:From:Date:From;
	b=GqEiIT6gOcC6mQX0GLiXUvWL96wV8sPFi5ef1ahgCHoTJoCYhaY1BPLPEsMiMJiCx
	 UbOwurWyMX0U+59FnT+pTrDh8sVsetfST8/vJEXjQ0U2wp929Zshy2bC0jj9xV3a1T
	 +P1YGE/ff7nCpW6XxVPgqr90maHz0fLCXRxbhCF0Sisnzjgo3Gv6BjN8bOP/v6IQpW
	 +nMP9DAnlVejvItelDtViL7G5GAz1xUSwtf35CzRuqt7/khq8omeQsYID8XkKEkg82
	 U7o29+13/FQkVphUEy6SV+sXRSfpzL72q/Bxk1UxE8g2a2Xsz9U9ucO7HipG0+joHk
	 K+dp9Y1HkJMrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908CCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795645368.6332.5700242130241794200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0efe0c92f025999ca1612944d3b3f8e0c0b51b34405add72e6b1d9402df53e0
Date: Tue, 05 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777956453
