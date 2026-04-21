Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955236166E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776752854; cv=none; b=Hxvu5d38AuvWcHrKGhHd9JX0wLsl5mrIqQatrW8jkMYhfg7sP4W1avbcgVFtnlfUuqDZaOSWUQwm5A7Wi0LkHMZygk+g2KZabImpvxpZ4wMjDgjZaXggShyKg+LhsP3AlWUqHorr18rF1RPQwo+qcvGce1pWH7nWixURrHUUOEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776752854; c=relaxed/simple;
	bh=QnPJ/KcaS5zKa6ifbM+6IAtikH5SfJhUg+S7syu0IVU=;
	h=To:Subject:From:Message-Id:Date; b=kJqI5Mit4N//EDQYs5QI7W5vjy4i9mGqFwiTNfsE6vi3FGfo7z6cfixczmu7qFDSh5iEXj9fzyaAO6v+0j8HRzFcD4klOCc4i1SBL2sW8D65Xj0OxxMNW+guzZDX3TabCOSZG34d4lCHADsd8l4lA8EjATAF3QEjWgACBLYi4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RockTpHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RockTpHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87F2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776752853;
	bh=QnPJ/KcaS5zKa6ifbM+6IAtikH5SfJhUg+S7syu0IVU=;
	h=To:Subject:From:Date:From;
	b=RockTpHxM6Uwc8mOh0uAel8wCuEOKtfavd6RL8HFgxJh9i4A6nj3bPGqMMs7mjewm
	 1tyUKdoYOkyP+yUaJIEkGUf53EOM9VJQsjxVWqxN/5FCBloFfIRbsfoxx+0lZDoZM6
	 ii8EG1lTDDuJ8w3ba9BlrjwTRZzweSMfVqgvT0cN/h7rlLMmJIlFBwdmdl2OFa7Unm
	 jKzwdtSvD0Xa7X+1M10g4fY/ktnJ3OdQQPvL96qHZlEBiR2iBjc1haZAGUJRgcTdg8
	 wsN2Cdqb8gydRm2JorH+cV87Y+9cs9vRW0hJSxrTr1iBKcrM5bXsxED+05ma3fBg/E
	 s5YZudZCXoPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E3F327AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675285368.11502.6949672138916334404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1caa4ee9ffe5fcade3aff58191ca32725b0f15958fea365c889bfb41267d22ca
Date: Tue, 21 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776752853
