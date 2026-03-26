Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6CE242D89
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774531494; cv=none; b=qs9fpHixTC4iIVYvHnGffI5eEpaZknwFlt1ZoB6TW3vl7fAKc9t29eSjYTZmnOPZurqpvvqdDyhAH1s4Sg9ynUvRyZ10FUpnD31YqDANTA2omHiWJP3IzSXGDlPXK09mI8QERuU1IXR4z5NyhR3YnLmoJ0LWGQropGcA/84Gf/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774531494; c=relaxed/simple;
	bh=iPTfX2LnFaXvkmSsuaet8EXVIf/Hf9tDhPmy6oqNLT4=;
	h=To:Subject:From:Message-Id:Date; b=bA4dT72JOKQzKI8E34s7Qdb73g+V/LCBzwBEbmuYcf8K4fPkWKm76m9AZlb+KwOp0zPq2MFsKlFAnSK/gnQ5i1KP5HtyIGY44ExyYUPhLD9pqLXJfNOOJj5hkY5LFrD60RJ56pvOOgSeE3qsrWyRUUZWdX55jIagxGTFVXEneo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwirQm+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwirQm+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1578C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774531493;
	bh=iPTfX2LnFaXvkmSsuaet8EXVIf/Hf9tDhPmy6oqNLT4=;
	h=To:Subject:From:Date:From;
	b=qwirQm+2nUJr2uisd0/oht126eqjsCIrWXG5HTS42GE4jmIq0gIpa5OT83YTYgGhG
	 8Vf7XnBaAzmjCSFJtQNVwqNdf7Jj/5MlE4L5JtRzRqQKgUaXpzFicsQiB7ZSpluHzP
	 8kIxJ+nwChr7w/nW0M4hqV8KEnLInfGUjLunpIjJsBi2UxK8JUTJD8D3RdDKp8L2P0
	 PZCQW/9aUB8kdX09TO+eVCTQrFYcJlhPBuJLGLmzLntZivpbOrIzzd02j68DTPYZLH
	 cYpN92CTswQGHukJ0JHtv2N31aP3k2MAyrbpplMROYoZQVYnuoXvH1wJTvUkLZOqRD
	 HpRlC/3F0v9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6A10A62C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453149358.4235.16625649625096074170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a9543ed539c873ba87d95d8fd51499062060c074b80830691aa325bd72ed10
Date: Thu, 26 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774531493
