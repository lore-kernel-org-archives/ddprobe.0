Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C962010E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 685CFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666765253;
	bh=4JS8b8Be+t21DJ9FZIs9+Eh9q0dqRwnUGbWh7fCDkqw=;
	h=To:Subject:From:Date:From;
	b=a4zil/HF5ahUMlPtaCTN3a1mr6+f+GFPjuYpH3mC6g2t9KMaWOXTW+QaU9UShoI77
	 5J1NEtpR31G8zEp9TQg1bu2gGwclLvluTAslZFV/Kk+ZmZmXkoNExqRK/QEg8llulj
	 vXoX30GPkuEfi9kcmM1cG39At0oB+Hn7ZRMAevEPcjgk8Ss1VlfTkX0dAl2dvrbfjZ
	 EkU259DwowWeqHUWVop8jAxn+09noxjrNX8Xv4PUDN+OiiMsnbzwoL5YFDbQpqhjaG
	 L7BiYcEWtqTa6JcF7fG2qb2z9u/rFU+o3S3Rd9Gv0cnw9jP3OHeOObvHJO5z3YImo+
	 ppwVNjrqh5RKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500E2C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676525332.24481.16604099029260500663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647fc555c05f16eabc71d034a0c021e92ffd4a1917e786a49927acec556d2964
Date: Wed, 26 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666765253
