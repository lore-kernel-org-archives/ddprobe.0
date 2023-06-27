Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB291FBA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CEFC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687846388;
	bh=HBj0xYyeM+r9JkdTN8RGElJ3Xt2lcYVqCZPRMm2ipOw=;
	h=To:Subject:From:Date:From;
	b=rsJDuGrLG3Ngw4oXEZFEkNIHWU8v+WXNzWb/TLLKfrlk9Vv8B1RlIuVtbdmM3WDZ5
	 pPVHEQ7RaFJbO7qTiq5fBOvfF8+7YhI0M2lY8NCvUcW+9fDXX8S0Q7Ubgdtwg6Kuv9
	 DNjrqJt94UygiCSfvTkvts+XeIUJuPpxfy0X54I0bSKJy+zzrIv15JfWzMHOofIcsG
	 i21dG3mBzZdhisxOhA9K+gfaL3Bj/5Vf5h/7RlUk99q5QiAUX4Yk7YI2lTDS7IDTS7
	 30qrkD5fqjzHPjtYjhAeuPJnHwY8DN8pJmbGLm8SMJTJyc/pP6guzsjy4sa9zhZiu+
	 4/g/isYf9+QLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C0EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784638868.10481.5809896557801874833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55772f80772c3fc48427630b491b64dd4f88c89aa427bf5819df9c413d0e59ae
Date: Tue, 27 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687846388
