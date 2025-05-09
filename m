Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5131F24167B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746756594; cv=none; b=hd99lhhspSQoz5Ve3yak5bVJG89DtG4veFDKB2IFwpIIawowNy+7OfrqkR9wZadaQ3+AJXB6a/RD4xRqax4YM7xQkZeylUo0I0OEAQTeb9BRNe62KkcR9YbSIeDuNm9M3EnwyYLHiZy2Y8rjbm3VJjsz0/WWlV0Wi7SLdwBI2NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746756594; c=relaxed/simple;
	bh=iCaa9BEWzfCpm4vnb+P93o10XSt0e+0QOc/ImCugzaA=;
	h=To:Subject:From:Message-Id:Date; b=LvLXAe5/nAKuhMfZw66iOU+HeRgIQyl5yvBFSSz6GLw6hhQAmQj3c7HI4gFElI8dysJvPRtF2CZmcX/n+iXLEl+DlSa4I/nZfUKWtvwXXkZToNmEPjULoiCF0g7iUNYDOy+DVtdo3n2niaExbmGwd0hL91bumvxgxBRyV9rFcAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffK0J3Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffK0J3Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEC4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746756593;
	bh=iCaa9BEWzfCpm4vnb+P93o10XSt0e+0QOc/ImCugzaA=;
	h=To:Subject:From:Date:From;
	b=ffK0J3SjO0XT6I4x+I18Y3PPleRgq7TJxWfDRG/P+OXDpw/zR+K43D5w3r2NRGocz
	 MFq+4wZ+FkvO+Wx/qWe5gzLwA2f/2VDPlkFtHfxPdI7yeQAUq25JTwaWHVTJXLge6C
	 SQPwUspY8Hz4k/gYYwDS/P2Mogx4ooxcBuNzxlxmL8PkX7ksK/jApd82LPajmLWJ67
	 Ey1UXEiq0PWp/K0NDp+mey/DC6AtF+8JaSRoLU1vzc8kiR9z+/I4fHApHpg3CluAp2
	 UFcbhi4FSK1K7SYDbyqzqL5yODSA/uQhfEBHW5nIzDUE5CQLGM0PuY2s1TTpN7jK21
	 +oSa0WiWhDG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC160C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675659358.9152.665266940432655663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897d1792eb1516d042bd24a91b0b9271826f22d52e6be3ac9126596f92118bc6
Date: Fri, 09 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746756593
