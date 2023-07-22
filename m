Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B079882D
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC492C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690015328;
	bh=Q5MXsjl6etZVtC2uIAVLgwZAoK0dVkvkUNfbZ8Fgi4I=;
	h=To:Subject:From:Date:From;
	b=CjOOdgi8Y0tCih55tfwJsDLEQpoPcotA4id7OOV0BA69kbiIQeU34dy/Nu5mfAO/J
	 +YeRmOgQz5VJl1BnH+dNCWCUhVfGbbF8rr2+f/8nCnRpkQHPFwLf0KrE7owo0tcryc
	 OLGMoNFH6M2PObXeawo/3XdOEnOlhiDymkOsiFT4czP2b9kP3vXElmBKeQQIPVAXNs
	 h2kjeQXLVNK9FFL8QI6DyYc8Nm+/gGt/dYvn/V3YdV4BLpmT02Lcy9D/OBHcqkKBsb
	 xKH3T8n21NOnYrbzfxMqdjcTWbKjgm3GNUgbJlxxVcUjJxuY7dkFsuB5UOc130p4rF
	 MiC9jhlfGsL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFBDEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 08:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169001532869.30008.4311173200858453676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24426fb1913f27e05a57ef8ec1a97921a7c0b925d3f69355a66c1c758860c88
Date: Sat, 22 Jul 2023 08:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690015328
