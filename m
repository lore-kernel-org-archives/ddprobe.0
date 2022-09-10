Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80ADEA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F3FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662805253;
	bh=k7Jupra+ZFkePns7DZWtsf9jvLQu2Ile7Ha0ej+N9II=;
	h=To:Subject:From:Date:From;
	b=aE9L6KwY0UOb0eHLGUOhxDQ5C8DDr73kro57lrVDUEf3ws1wtigibXuHao0u9Hcia
	 8WVUUIb1KxTeMQCgokuDBR55vvgqxlNNZYOag0Svyrz2GF7OhM18KzdhlU1qEfG719
	 X9PnANz2/vYfKdRJmX0RWTvrDvaHYiRpyeyti9QxTIu8rSMF7dwRfFo2JTB4snt1Cd
	 is0fgVCxsz4W7V373h7E+K6l1TaaEVgqVspBnGphPJDeFDl28oK5cfKC8HNfZrFA0e
	 BVlI+rpWSFQhlxgwlsWE/Xu/nl1GSAxQCYRDnlmnIeHZS5rWOABr3bq9jtC+fCKpGg
	 YcGaPzydYKBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB0BC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280525337.8392.9763453708599042876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ae1bb3d8a1d81786b7c6b73a7ceda8d081196a6018dd09f13231a06d84ac6b
Date: Sat, 10 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662805253
