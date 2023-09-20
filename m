Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A429A1
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AC0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695222308;
	bh=Lna+tibEt666R+E6NR6O6YkJeGBuLPj57yN3XqXlLZE=;
	h=To:Subject:From:Date:From;
	b=lNaYQwYphsyeTjjEehAUCAEGOg/ghmYWvm6TSgUad7D5ad5kG4alaC0wgVBUwbBCd
	 MNg9RDEE0Nl9byGBzno+e05E0uuXR8nSk8UkF8BLgJERczJWV3ibvSMfNF33iCR+9f
	 QS+S6oOxIz6hpWywvF6MqAYOcdEauT+7penRIH20D7h61Amed2AevewRIXM9u093GC
	 47OjqDwgLqPEq3twpgEOm8icJqyvoz9nuH1dH6Bd66Vhen212OrUJ5cK/uoEJtfclX
	 H6Z90O9QRqGyg872DLN86gsJYucJ0Efgiia9dIe40brNnr2c0R8nbPZKMan6Vl1b1A
	 O+tBH70U39i5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48F1C00454
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 15:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169522230866.19852.1809874833858319801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e53d53b266e6ca140a15030001e06ba4a0486e09f3862f63a551f8867e2d5c7
Date: Wed, 20 Sep 2023 15:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695222308
