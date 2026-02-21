Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1F33987
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771646094; cv=none; b=jmV9QKXkYOycta2tthEFDWEGii5IEdpczvROyOs8bUjae6UzoFuJFihL/8qa3WXwt8x0ztWFwZCU8ymfjrkSv98Ea9bbp0RbC4y9q7oS0fhUlKSkmauSE7wlBYIcjwAeyQ6M3lh5dPGegeCw1br2gd+Js21Ekn7yxGkj1XAzG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771646094; c=relaxed/simple;
	bh=urNbdK7ahP6DTS+HLXK2HXjNqYvRnTFN51RRn9lpO0Y=;
	h=To:Subject:From:Message-Id:Date; b=CiQ71b00kDOKtV7J5O3zNpYAEbdqgZCztcfkagiRH0m9eUMqMz3K5/mUlMPil6ncXa3vfrXXhGqGEtjglH7TXQFlkFwiWoRNceya+Sl7PCGwdSFTsLSZwUkiYppkNY8AxNeAmysi6MwGx/FetSl6RlgN7uSEQwGig2MbxYTXWOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbCdQsfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbCdQsfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A915DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771646093;
	bh=urNbdK7ahP6DTS+HLXK2HXjNqYvRnTFN51RRn9lpO0Y=;
	h=To:Subject:From:Date:From;
	b=ZbCdQsfEvXp9Z7MHZ4Y97zzZK76O5bM44p0snW6E/qDGwuqDn0W1ZSkMsA/1rKWvG
	 TI2HNy0SH6z0RV6GfE9/BXkKW6O1WU9Xf1DLkfoYUoYigkBEYtsx1kllnp8Zb1a3gV
	 cABCcGcF6BX1biUjTvwfZr8Pk9Ajp/QeoaEY7Vum3rVSu2SKKTis9XK+1pG1DfSxJG
	 auDYa5qXKU7faaIS/15tfjzPjflJJY3qYcMTnHuWSTazpDxgQ+scxHScDD5ekBlf78
	 48yuSvdtdZbIh5w2EVQL1KbrZAyd4XM1ZgJDclhHJJ8anCP5b8l6q2b3CvLQ8szOTR
	 kBrtFT1kkIM9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96215E9A049
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164609358.7308.8618183017660953121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878b5ddd29a7ec3a1f4c00af6dbbacc82bf8a2345abae3cfb7f21dcc302affca
Date: Sat, 21 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771646093
