Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D895A3D99
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82973C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672843287;
	bh=iwVkkvEavHRCEz6FW92jw/MIKF77ySbfc7vfumN/Sks=;
	h=To:Subject:From:Date:From;
	b=prtAo/Hipu//TCAqOcb4vINYiCVy6rOJ31UNCo5RSHmxDoUA6u15Z8TWOjLxB6hkW
	 UryK88H/1rlTyOv6MGIDNLXhS+fCQqwNJq9oUfxazo4MLl1C8eD+h6O4n7hVCvuBP4
	 q+6F6mZn34ukuYG/MR62f0Lg9zczS4s2JRutrz73BZ/6uYIxko9s2AME1GQDcjDMfu
	 Ej7qjbJ6viYexSfFgTQXhrJzksdUwRT3EaRgFLYw3RzNwCg6Gpw0KAnz7z+TOmAcKG
	 smiGZZ9kegLlD3v/AwcbMriMEFCpIE6QdHbRmMz3HGVXwTXw7tyBJJEN2THwROjiFK
	 WdY9oNM2DppUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B91FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284328743.27693.4342723328147921206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aad2a04c6652aede81e48393f3eb1949bdec7576a2f061eea7005aed6b88af4
Date: Wed, 04 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672843287
