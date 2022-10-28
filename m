Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C99E822
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7923BC433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666927854;
	bh=4owwX17eQinfbahF1vWnid7TEaEu8BXBmduoAYETRfc=;
	h=To:Subject:From:Date:From;
	b=jIq/hZ8T0g6g9vrx7gl3GH2sC1O+VJV+hgc1kwJxOYBlGnglanhnSybmUKowB4ERJ
	 c0D4MKWLii2XiAIXKflf9TMHk+IajGsE4P7e8USSiK5f7uJWVuRCf82o1NbR0MR78q
	 g8Ror1clrrU6VScDcpdukiCe+symHX+hl4Y/UDkfJCJpJtAkq3l8y4Ib/NluQ2rO7P
	 J+U2Rgxsa9KTnOO4weLex3USrYFVonz5dJIqLWyYcn0OXkW2ebImGs3xIUKycCnKd5
	 9f99Z87qhQGMH+Fi4w/bO340fDbVQ/+PKXnhyJh8vrcn9FLu8lFn8C7ZE663HFhM1Y
	 Bp71Th/r7hhyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B1B7ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692785435.1703.13186954789838673065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6136b9d1ce2b6ecb8dc09678681e4424aabd8a5b734b5b63a4f224f4718d3555
Date: Fri, 28 Oct 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666927854
