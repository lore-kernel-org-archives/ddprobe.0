Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4A31B960
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717014863; cv=none; b=hsOck3vtZBJlCRrlaRdi4jb2wl1FrAy7SlL/jfSnISONx3rl/wfCMIN8XhGC1W60F3tmhm3arneixozrf4xX0jYytkgfMIBiwpx03kVrGslutZdqGBsvEihlFjqg7CwrNccXmC1rF1TrKxcmU+c8zVZ0ggCtc4VD7S1KwF3AJcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717014863; c=relaxed/simple;
	bh=MDjGD5rzZ1YPN8s6/0IQ0yqlODi4VIbwZZRSAIb1ZXw=;
	h=To:Subject:From:Message-Id:Date; b=Kcqf7MgcA1qewP++muxj0PczlDKdWRPLbskQjDgZZ+x2iMaTiSJhGhiNmxXCVdnMlkuLgRiuTg+eKKO0It0ZJvEddkxVu39h4nxD+ZeEtHLsjZgZvqVsuTpkrT5tC/r548HnOUOhmSfckY9WQuRJhIIR274r3INmI4of1mBYQOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGg1ALZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGg1ALZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0982AC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717014863;
	bh=MDjGD5rzZ1YPN8s6/0IQ0yqlODi4VIbwZZRSAIb1ZXw=;
	h=To:Subject:From:Date:From;
	b=kGg1ALZzejJyhJuKlJdsHjVeMdzTj/tN4Mq5OG8g+q0RNLY3q36HMYiGKxcjx+XM/
	 unYoZlpz3d0vP1zIuDrI+oAfPSNZ9ZWnxdnKays5R5/zz0wpp1nC7uMYYjdgK1mxrN
	 8axvVlG0pL0ZwF0dFHxHWEzgBaPrye0KYmwvH0+Ih+5DZTTcn+pBkOzdyL2+ZqXluF
	 g9MEZ3UeJZKX7jWEzChwfisFmu7Te9k0aYCS6Z0w4qr9CHK+vhKOvtuwnoOknqfyqk
	 VFKF90u+66FMe5bejZK+V4QqPPXyoVvEPQbEryieRlcuDn17DAqCvN+blPLPLnCURQ
	 2Eik1595Jtx+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5340C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701486284.3782.11632795275718890435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e65f71bf3849d2c9ddd1f4b12c9d87318bbff562873c2210ac588eadb41f16
Date: Wed, 29 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717014862
