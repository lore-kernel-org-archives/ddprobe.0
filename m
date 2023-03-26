Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D74A5D
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FD52C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679821326;
	bh=Bl6lv4Olr4wH7qJUvPY4O9oxv+4kMnY/TxVLDheTtA8=;
	h=To:Subject:From:Date:From;
	b=Sxcu4I7bSCiWw/yKX67GL1aWvEy6vOmrveWwiY1whgwzZsz4T7K+vScb4P8IDkVE0
	 nhdAhPBgUMr8Mgp76mWX5EG0Inh0Qe7D/gI566cTggeIRkeSNkUBPsKH7XNW05cXms
	 YwlU2dVfW6oSj1Nw4zVq0z9cEBCZ8k5HuBYeELYhGj7Qv8QQqa7CKquFDoKGdZfSeD
	 WrYzqCjqOMBAu517QDfbcJmhCyAHIbqQ/9GqsqG3X8i0kHDarbt9vWbASM3tG5waf5
	 bi1VoSUMo+Gg5eRDKDWgyhVLEml+hDX7pnj5TI5ZRXvmZjXhZ9rn0k2ZebfYuf8DZe
	 x6Aa8qVx6I/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED2CEC6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 09:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982132590.13226.7834607805087605577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97df428df48196b679860068e589f19d8db92471a0169241049d63815f474964
Date: Sun, 26 Mar 2023 09:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679821325
