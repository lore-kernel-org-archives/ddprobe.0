Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4860D1494D8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749269994; cv=none; b=oauEPN0stEuSayQDSWeEkJPBQf6dAE7upG2SvYDZstgmpDfVZcDxPMYruGHzlJqZh/yqhkFeHdIzPEPRjFH4yveHOJN+VryXP3QVZrdlXDkwcvcJplTG1ransB4oNpfYmUz8B6YM7G+jo4GU551C7Nvz6YQ2FzRuYzSYOxkE62w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749269994; c=relaxed/simple;
	bh=cqntz95u5qYUmX5Zw81KEEXfWaGEgXkAtvK4WYmCtI4=;
	h=To:Subject:From:Message-Id:Date; b=NcwaS3qOqKJMpWWMZRDRo9jAJa6k9pFqV4IYca8se3oK++so3FIFRWLY2B0EMJCAaXhudlPWeEr2cWFPO2WwJ518dw433EylmRvOZ7isqRpyhCRo1PkX7276y0K6Tz1uZLug4dZRFDexi9I91tqd4+6Zi3ktMjmHQyKjIv9McQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtOhxRjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtOhxRjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76D9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749269993;
	bh=cqntz95u5qYUmX5Zw81KEEXfWaGEgXkAtvK4WYmCtI4=;
	h=To:Subject:From:Date:From;
	b=OtOhxRjbYoJFizBz7bBTtts2GLt6tfxbTbEMkTRbQf0sRjBhEG7DwSy64WXflnN/9
	 JepHWqlF4yTqDcquq1ynVGJifPAdLxqqJLI7dQqpqTjpalLcDFkXAl83V1T9fY0x13
	 3N5Vhgoo3EQZE+QWBmSOq17NNAVh+mnegQLnPOBLikpiDlsAhv3ZxGqWuhSKkFtr/Z
	 yCP/Zos7q0P6hFOgmLgR1o4r3iqwrESF6fZQ7WBq5UctY1omqYjXXnWJ5tDpQefv9E
	 Fj7VVHgmj3cGLj7aZhpNlJCC9pToA4Yy5bsYHp3KMcEK/CaUecvO9f4teCTLyybiCx
	 EnRerYRP+GZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A810C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926999360.5157.76293826325909732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4769f3d2e15993316a1b3a96f4a3dfa1bd993906d0a7c46254ef094441e57b
Date: Sat, 07 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749269993
