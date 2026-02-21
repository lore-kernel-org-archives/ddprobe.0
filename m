Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D8279DB4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771656294; cv=none; b=Fc9h8ymaa9vtifNLxNzJysaDNsYoDSgRW9drTrNU+6aQyBoSZnT+rlArLNUu4+jOj4a7Gw8h1pReByVr9uxP5bdIyJD8KaLNKP6egy111hKckke4b+hfXESmO8G/HG4EPCtBratou8wyEj4xM58Jv/YcVE9tPSeLaKgRKHftXzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771656294; c=relaxed/simple;
	bh=ycnfm6mJXjAqU4a2y5eZimOv5Gj2GINfDVdd7qZ75aY=;
	h=To:Subject:From:Message-Id:Date; b=JVHk6NaIwR1NCphIK8pd7N8YNpPTF/g1bfhLmPPJ2slsKDNU2k5FT1nCfnXDTWH+ZTRaB4Kh5/zRMnfLWWu3+ZGf2Y1+ANNtvE9L91OrHdhbvXODkcGyJ2ZiaTICwNaJ/HJSMelhLYFKzlakiQgJZVNINRrW4OYAwU/Ox+kgf1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSsiA6kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSsiA6kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1574C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771656293;
	bh=ycnfm6mJXjAqU4a2y5eZimOv5Gj2GINfDVdd7qZ75aY=;
	h=To:Subject:From:Date:From;
	b=DSsiA6kjT3YFw6McU7DSul4r2IerJ6D3eh+tjgFsTEa/5NV1CQkjvfEMHoX4Fm5EL
	 i5pp5Vob0fJiGbWUUf2p8W6wSKc5JPZnUeRMNvmLJ46VK6WCfV9x4MeNhI0UGu6tdq
	 6Jjkz/wXCu5ZGeegBhiSbMKB3SM9J916EyEsyv2sZXpkdf3T1l+nCJP6Hv6+xLo8iU
	 cRbeFLYw72+kWf63Um+m/wkmUUAF7y6ky0rksF3MFq1gPpw6xG7GF7gh4zmuyxtOj3
	 8r26lcM85/VjSRh3Mmf8fVjGYGuHnFVtvjKkNeq98mX99d9HU+g0iSYtO3skWGtDa7
	 v0lMklxCxn9Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9D8C61DC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165629359.23369.1880121828548490141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532e92fcfa155a149ffa8e114953098e1d0d64a304ef80118b5d28fce062acbc
Date: Sat, 21 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771656293
