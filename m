Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF31E4AB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747591194; cv=none; b=I2+Btp1fmRWBj8UhjFbCwmPkdnKxZFMZD5VYqfmYH7+v8OL45XVsaFXFAaGfxqqt50aCbnGJk0W8ClYjw8Q5ERxVGnlEfJSHOkJLc+6m8bUmhWXXn+9RcLtA8i/BcyCZdAIbzu8cCAFMj869D4q7W8LPLDeNHuiC+P11OX3Gj5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747591194; c=relaxed/simple;
	bh=QdjZ6cPkqPXk/SnK4fPKUDyUahz+iRE8h7FfTYboYXg=;
	h=To:Subject:From:Message-Id:Date; b=PdbXCxRpA+d0hsBhABlidoWyn4pwBgenKq6a8Qz/NokpGaErdhWIDMJtPJ+iSAGRnKkUYMaCR6kEGToW14yXQhBmW0ZovMVK2Ig/dMLBUu4o7zhDwoRvOsWM9BPOwFw78p2+qoiEF4kjtGHpS1ssJVaA3OoHGVK2CZSrtXxfHXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt6Jfli8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt6Jfli8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747591193;
	bh=QdjZ6cPkqPXk/SnK4fPKUDyUahz+iRE8h7FfTYboYXg=;
	h=To:Subject:From:Date:From;
	b=Nt6Jfli8pZZHCqdAvRrmihOkDxcD1kpXQqKtSmi2Oaw5Et0J8cg+KkOYVvmhxVMo5
	 +gySzXXnbC4nDBkDHST8AMikHJ2QbXfyZ6rl5UMPAvDp+WztNnAIYTiV2RhFuYc7LC
	 ldWpaQWzbJknI01hsCejfcE54Bw1HLrN/mMiFNd1xw8w8dU07Lr750fA0js59Qgw0Z
	 filvUrrOwdh0ZU6HPhk2QuTAgUf0Jtgu0oua1ukISWEVSAv/8wjChs/YMRN8e9pNk6
	 MuA25GeOY71fMVhx89StRgNIlYrzpsQ0+u3qUdLlgh/xicJnGU8/zJlxkVsFFabAs0
	 aWrgpu32KGJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DDC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759119357.31482.12089243421858575548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa1c8b34497846cfa587190076c5319c06b66e969e38c14bfb464fd380caba9
Date: Sun, 18 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747591193
