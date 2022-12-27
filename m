Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF80A21
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9802FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672128687;
	bh=upLs1/Ce1Tn7Q9VDVgolK6zEtEYLZ1Cy4EnAhyTuYB8=;
	h=To:Subject:From:Date:From;
	b=fQreK+JzODW4fMAm896DpGPfqNKm5j16YzaA6f4iB7SaG8T8tbaAjYtIuIkQ837K0
	 2G6WQwyE1hblHnaXuqa+tOJQjKQ68hJsHVQuuwEo/OgHzP5UXpz65zH9YOPuvEQAXu
	 zEkkn/ZrD5FglBjyeLBAqjICubAimbBrBlkJLKdlVlH0QIqE741vlyST3T6o+jDbLL
	 jXBpIaq7leGoHkzddJeOUskrC5YZzM6EZ8bYqAEdAXE6WPsM+6QhfhHOopxYl/KTWf
	 Rnf7yCJnH/UdSrEj2N6IkBaTPfUdNgTjdEs11TnLDxp8g5JsIKGyOx50H83qMcu91E
	 eCVqhqxacxAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75343C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212868747.23097.6652162407063359489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91311740f78ebeefe0f5a147d8522426ee83b9ec81869db8e3ebeddbd3198bce
Date: Tue, 27 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672128687
