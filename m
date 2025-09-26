Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7B9264A83
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758857995; cv=none; b=bJ8jOhW9V+qjRSPESG00f4xY+8L52ktu/TPNfZyQTjiaWJnyKsBLyn1wIB6dHtyfMsV2/aOYArogFmUccbrHoQMg261ZPYFLAodIUO6oiMw0I5TI+tnDYK9EAc1OACljRg1BYhKdHRSxh8Rf0EWMu3GijQHFjPnZiCzRJIX3bAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758857995; c=relaxed/simple;
	bh=CpEm/Q38yecH9n8CwS3vRhujwSf0XFYFxE96xPbIcMk=;
	h=To:Subject:From:Message-Id:Date; b=f3o69OMniFz7er962mYDm7e0lnHAcBQJuQutrjkLB983kWrw/LmSKjZjZWmx73CWwFDYeVAHF5apa/7hob+v6T/zA8A4XMc6bZ62TYe1T9hMI0ibthw20A3oZ3fqPlGdL2bzx+9pyinJQhr6U51PpNhe5owBhgk9fklpbGI7r4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQbED9GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQbED9GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D65C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758857993;
	bh=CpEm/Q38yecH9n8CwS3vRhujwSf0XFYFxE96xPbIcMk=;
	h=To:Subject:From:Date:From;
	b=CQbED9GTeBABVJ/TpMX6gi8LJNv3todCBDbN5ZXDqct0dXdUeePz/KwM0W9hoWIeO
	 H5yj2jYnfVH5srAsjh5uh64OU/l5oONyti9prG4Dnbb7R0k0KZolBCJFjAlB5AsNny
	 jtKWDA0+bOVVIhRMSEcVTJVwf14o2Cz1oV/WYfl1HDFg/q3X9byL64QTmBO0+MpMe5
	 /F8ANaTG0XrSFbXb1HYoM1TitwzcG8ZbvBr1i68FKAA7T/+1ZI5aT7ng+hjd4E5iu3
	 Ggk6HpoAg7Rd4aOmvHNlyIXxe3Y2cOUJgayyhiU/fF9POaIeTpXZKOxJ4YaniBa6Om
	 vy3vmyuSuQPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F3CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885799357.25888.14075475883282060865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60d791503cb412d037db769f64693479a14158a1fd1fd6583155cc7817b0611
Date: Fri, 26 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758857993
