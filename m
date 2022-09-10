Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55975A74
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E20C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662832853;
	bh=8DjTgCx0uUnAUfxM9mrlJa/aFeu3zUdGTAwXJVpGYSs=;
	h=To:Subject:From:Date:From;
	b=YDmJ2G1+U5VwDXLqY/J7Vb8w3pEjipXpxBZ57F3UmuXxHo6fnu5NaUuxd0z/Iioj3
	 d/De4wi9jnF0xssDspu6q0NWVXWdrJ9jeSYI8ufM2TTV49OlaI+sM7y09AkHewDQ3W
	 kXw6LNnTjw8JPOCws+Tca+Y99mDE0PlMoCTfkqYByQL/XK2Fp9HOPsfbxe5kCNnVme
	 2vXmmxVpEkZaSwCKXhSY/II/Z7UU5YHvqr26vrOFDLAL5kUjCklbmee4AEbU4K077K
	 iWOteD13AfigQCuiBHBXTFg2WByGUhtDgFK8oZE1CPgNBF6RHNQJUFkOFIfIFJ+PI4
	 Q5kPgzQhC4qwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F48EC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283285335.31158.2437617218344623560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a42e61ebca60a49cf95fb44b265d1056a817072750cdd13e57dc3e4d44c8a8
Date: Sat, 10 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662832853
