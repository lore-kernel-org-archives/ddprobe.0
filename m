Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DCB27E7EC
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764684774; cv=none; b=hK+HpK8UWk8Vvsi5fx+3XIioiZz1fA7nY8LoesNuuSId3MCyY06BLme1WGaVW/EtA8iJg5Xbcw3ZUPbsIKA4YQ4Gmpv2DZBpAxq916FC+VoGVHfWrkDsqOaapQh/Is9rGxgQ9/XtXjMwnYz/VbDUhE1khiXFiynkKrBowi6Fs1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764684774; c=relaxed/simple;
	bh=e8o4njraMzFOstV1T0IwedxrdmmRm9k21Z+iDlMitiA=;
	h=To:Subject:From:Message-Id:Date; b=c4JOJL1vsukyZSGTkZLzBVFgFO1dq/27Xw1hWzVqxXhjbVL1HSOM0riLb+m1wPL84gqaUacZTgg+ZRlSW2occV1GG96CAXV14anBWtEfbtpX6/FmIsAYhs9qXUY3ftoT1qNilY2EfOZWDvzprjY7t1gbyZ/2eE1mXqXPi/oh9dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0qp1Juf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0qp1Juf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B13C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764684773;
	bh=e8o4njraMzFOstV1T0IwedxrdmmRm9k21Z+iDlMitiA=;
	h=To:Subject:From:Date:From;
	b=r0qp1JufO3n3yuvecyuWsLjJMrnKqmv+J+Fp/32tCqC/jlfhhtDFNsmZAjxMfthUu
	 vqjyMlnjivz8Ufy0tvIGEHxmBrFl3Rnn/v97jzEhsxOBCl/48l3OPcjeTQmMQAcCBN
	 5r6ELY4xXx+5XKLAfRZuJsUPG7GNy70OFBhXBVn4oXucj28L3tXheFS3URabg08JWQ
	 2Z60O/9jkR+p19P7yXMsJdxe/XVbAJvOHW/c27NhQz33Rba8wq8JbSo3HUSXVvL7n/
	 PfaeU7EBgRUO5IwffexhZfiOgTd6CDhWNornqmbIcifeauj/phEq4sutyz/ypmy4i0
	 g0lZGEfGifcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96585CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468477358.9984.1205027423948252942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1422dc8985488c8149108416b665f117daf8a11e04e3cbe11fa25ff80c1da9
Date: Tue, 02 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764684773
