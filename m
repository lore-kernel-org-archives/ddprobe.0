Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507931C13
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F89C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692072188;
	bh=2dGJjtMx+EJ2URRi6gERlVfSV743Cddm/8HE46NwjCU=;
	h=To:Subject:From:Date:From;
	b=edIHVi3/KZRJWmY7d1QZ3YA2bz1XzyHq7kX8hVXJlcxEoMKDXQcLw9fSPFi11AxLs
	 4W4xI4GF5HjRAp5x0hgrrDYuLAmbbol8s0a9dkBPvW4G/h9vSPAwwqoyuqvpB2VaEp
	 t6veKM9wzuJUXjUrKVlQdK1Esit3lRqtzOMLu0JqcXUNXRO4r7n2xiHP3RIwcG78hZ
	 JDB4uP4MmReypM7bQmjzGfgC/jUlcleiJgoR6yjb6ZlopTDIJUmB34MBhZ3TyDpAPQ
	 Yi5b7wMIkh3jS3xE9PTolQygXqVhl0WS5q4173X5mm7Ag7YbAU3fbCeZEpJW7OFq8b
	 mIUxWD20aZWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A624FC001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207218867.3749.9362789801518228892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20e43200bb326cc26cbb40f3a195a9aa16390e9d0412f98d7c92bebbc15f36a
Date: Tue, 15 Aug 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692072188
