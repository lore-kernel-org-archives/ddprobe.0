Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275A2DAFAE
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759396794; cv=none; b=uwtIJtCqRqgvj6RuZ8xezs0F8XKzY7Xj+1sCqTBluKKAhPQ5CXWA6HBXjazcKK9fYfnefZzRkImbfFuiYM28VlASBTW0kdtj7FozngN8i6YXaNNHWWLkC0F+61fvpqtT3gmePlnlLzPM5CFp/CR/fVP+C2LsxpvF9KyiJEZfJf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759396794; c=relaxed/simple;
	bh=xwmLug5MZ8Vz02QkkSup8e7gGRBo4lisgt3CKeim2sA=;
	h=To:Subject:From:Message-Id:Date; b=eemDfOwOmkJ1nyWB1ytSeIOV8/j+REECzKiy3KjqVXnz8q/quQNNCqqBAPIPWK7m3Ld9rKYflTACB+zyP6rVsLnfdXUmTX4ua6d+PWQUA+bW9lpgpMWVe4fJQq1ZdIWn+msPFDQAY8Msu9irXqELzdjtVgdXBrYe7CxKtJsyZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBxXV2TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBxXV2TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2477C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759396793;
	bh=xwmLug5MZ8Vz02QkkSup8e7gGRBo4lisgt3CKeim2sA=;
	h=To:Subject:From:Date:From;
	b=HBxXV2TW8QwlgbkCoqB9e8+5BxCg6t65nNvepbAZAy4oMxZwZM8TC1s6uIl7Q5oXq
	 Ob0mfPw2sptSvZgJwYqyBipmy6mUbsv4nGHGkju1vEJuVJYKjrr6I/OhKdqDQ063ii
	 X7wHYi3rYH0cXS2nuBCmkylXx5THeYmPjxCLpzleyy/sGtC4E293BAJAyVdF2vKee6
	 8mn9brbk5uvQ6MafbI/XlOlPJaNXId6IA4WkbGTeQrN51M3eDaNRZSjegijarkr0LO
	 2T/J19hKqMY1gpLzDiI5yiTdeJDDH8Lw7Z/6pPS8jqu3r05tm27X28rGi8HPVofQwx
	 x3Bc8O9C5KP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC5CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939679358.30570.3432623401859071526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556fa5552f6f911f02bd8063ef2fbc809ba20344925ff2fe28c6056319aac239
Date: Thu, 02 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759396793
