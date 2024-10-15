Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B1B1C07DD
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728996954; cv=none; b=A7lZgQ0VxmkHhavA/Q9YKsGUYQSVo+5cNlsYgG202l0Di9CIuk4bcCfCmnvaOpoooRZkDK/wXHQqiIm85NeY8VVuO4tfy+18aZYoYIjK9VMAJflzD6AOeHV4tB8a0XLwr9VMcHVDzeY4SOKo97yVvmL/P/veDArjNzlzLwajlSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728996954; c=relaxed/simple;
	bh=tEnWRoI5UMVjEW+IuSOaAAN5jGhz+WAhsVj37jNmdQw=;
	h=To:Subject:From:Message-Id:Date; b=Mi+sJhqIQmEvKOrgCGuDsAgXnTgeBKSMVWiPb02Gzm5aN0aU6Cjuk8rJjWw/PsQ7vWYw7Xc2PM58gHAeJU/EQrwdhdrusoIQqARo30pVFFJPhMhjW9wa1OZ93tMUV000phep9Vs6zcXMv9Navn3dsSOydrDkDJjMMAS/hfUJIEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXjSbqT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXjSbqT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC415C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728996953;
	bh=tEnWRoI5UMVjEW+IuSOaAAN5jGhz+WAhsVj37jNmdQw=;
	h=To:Subject:From:Date:From;
	b=HXjSbqT5qjABHcqnXXM9EnVS5LsKFyfOAdH7ZA9tNJknQcRBqZp2Pgysnb7izULU9
	 Q4kIO39xntWApL4YShkroi75YS0Rmz8EEJ5HHBfCyOH9EiHn/prQstoxjZJKyzz0+u
	 HaFAIlMq8hFI/HCGpDANIYOkA2LrEr76xoJCGx6o36ij2Dog1RXQua9ufYP66C37KV
	 oF5oMM8Lz1ndr/rJW5nSSsqgeUtj9+1HjfHV774UZ0Y8WjFLBWk1Ne8O2PWBBq4pEX
	 wJZbmZCAJJAQ5SdU4X4PD4XPpbOYKU7fk+wXR1CZZbrefcVXJ2sE+J5qkhxSDNOXkQ
	 GgTi+dks/KS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6ECD21690
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899695361.4157.10517623119027377250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94174a919184f13f9923771baf287486d636a84aad9bebd7fa27eed2e7440d43
Date: Tue, 15 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728996953
