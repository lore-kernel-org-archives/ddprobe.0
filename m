Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6342D9EC4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776467253; cv=none; b=SmNYWNin2GhCj0swwVlnG7ETHisU2T3jPY+JF3TuzSYCF/74d9iVD100nnkPNp4o4LEvxjUqbmJ02CmAc0QngwpvaQZqgqEHyktkyJpwB8sewr0ZEjYEfBH8hHUQxwUEF8Y67julheAQCcXrSltN2+5Zy10LUgg42nhAbLSNfCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776467253; c=relaxed/simple;
	bh=fXs/bj0qL7ujJlllSM2D/NTq5vbeAM8a4g5SRtKBDB4=;
	h=To:Subject:From:Message-Id:Date; b=iMsy0LgxAJFKv9l6I74ngNhtCaqOCiMGAuC1oebS/7LBfwgDiRWKqfTDx7NirW59SIZkqUu27HEGliWuoUiEK1egV1jBZscRdxBVNQAEMVYbU/LGBQA/tEEoHeYjd2frP00gKeNIDXwV9GmzCXpuLY/veWrH94AGzDgOGlNMqts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImReLz5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImReLz5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13CDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776467253;
	bh=fXs/bj0qL7ujJlllSM2D/NTq5vbeAM8a4g5SRtKBDB4=;
	h=To:Subject:From:Date:From;
	b=ImReLz5/6eK+DU0gsIQ4tpfc4k9BAyOnnAHUaq/mXkC0MYEFGeJHmzR1leZ9iwjF+
	 QBMvF57Sagn+VPSXHZ84iW6tvfl+Os0CZ95L53p+y8WNav9mVaMa/dL+ZIYutcVXG1
	 M9QTbYYGP8ScHzzJeWZUhOg+L692Wv2agqbpMy84tVtmVK7mIsOeSIxpedJT//V8M0
	 KsXxflHdTda3ZWjXArXv2Vx9yHOcWclhbdSYa8Ozv0qf0nmGG/g8ZkkV8jNnZj6EOM
	 KiVbQPRZ51JtpJAUfGcSLiiw3NSWW7ASZM2zDrVIu7rNXeoYl2ntbk+V1I96fVxMZK
	 x89LGWRWQC8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B202FF99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646725369.31015.10556210015243838336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5298a29e58159f4de71addbec6aeea637b826bf122d6b4fe8fda1c0549df9130
Date: Fri, 17 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776467253
