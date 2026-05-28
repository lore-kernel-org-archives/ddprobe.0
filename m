Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0064
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779926554; cv=none; b=q2E+JKhGNlvwXztNto2l4O4qsP4grbobjtLCO+xyotoWIjtTprAKrEyKNU9sMVFs9YKwLDLItRSg5WhyTGZAK4h64YH1KH3LdYyoOmkxKmhF3D1z/Y0vZkv+ldAt1Yu+2/xjTKJYxPXtSTTJS+4PaFUwwVxEWwcbq3k1n2aYb7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779926554; c=relaxed/simple;
	bh=Ng2nTiJYMWD6um9SNqJQLAV5uivzdQFmbzSSroQgJkE=;
	h=To:Subject:From:Message-Id:Date; b=dyjDKaNYos2tjgNaZzDobAeoGBoftRzkiTXz1abTWVX5bjbHzY+EIX2dEBKsXiRaK+Jw/iFJ4W03nsFJPlIglNIVNyULz+pjeLhrPF5/FMIEuSg1IHqHCxBq4sSg0EByYAnPeJH9ZxAFuP2VMUiKeReH2zUTOD+MJa4UHLZgDq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBYwfLtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBYwfLtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E13C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779926553;
	bh=Ng2nTiJYMWD6um9SNqJQLAV5uivzdQFmbzSSroQgJkE=;
	h=To:Subject:From:Date:From;
	b=QBYwfLtJqCTSvfx5BD8iQKEK+UT3yVzIjF+N72znQB++ToSZDl9D+MMST1aQJVqjH
	 nW7cmkXhr+ULrSH587YQzTNMYuU5kxGqKgJ/ItJ1uxLo+hu0d3yDKqtZ6yiAZZT3/8
	 7uU1TsjdlCxxQvb2h/VwMHhYKdmw0Go03kYiSAO/qe2RX8JBBLj/UXowJi/0WCfXBy
	 10Dq3j0YbobY5HqfiOqO07w7jCFiDpRuqyJfFVVCZuRzOYl4D+FzqOy0NUHXgu63qK
	 9ufkt/FcQhS+2JTaLXDD5m3fs8OXsyNHOOABlug4h8S1h+GGsHh0/wsFj2JOL/S7Cc
	 +RgQ6sAuv+0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1AFCD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992655370.31316.9684931710681536912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b432e62a6784084f4875b44725c356ac7010026977e58dfdb32f730d93bcfda
Date: Thu, 28 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779926553
