Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881D79D4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3981C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689236948;
	bh=wriXxb8Spd+3/PhCpOJk7xwivh8l/smrTlrRGHxh/4Q=;
	h=To:Subject:From:Date:From;
	b=Qyp6dK+xBytwymDvUNPWTDOl4Wf8l3GT1/i1TCo+8yFo5tHLdkQ037OqyUM3CLj4s
	 Y0nA7F9sUjYswrgqQPPwd/G+5LcUJmnpg6+BUiyvQzY2f4e/V+ynYwd+pbN0uWRUdm
	 8AryjRYKzi3tUiF8t3kdZEQKCcaUj7x+TocXCSP2JhnjcO0EoDvFiuM2Pp1esT+2VE
	 t17l7PLKk1zI9IIJd6rLzr5pRjbKt1ISVJ//GYCHehmJOmCAa3GeNR82FeDEZGyMbQ
	 bnuuJs3bnrgYBsqi2cKmt1ctvZCiNReKgt5kFkBzdsMvKAIae4iz8pQGgnN68jZyfJ
	 hUdqhWk4MK9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A672EEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923694867.11022.17731917311473475252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6f5a9c0c2ba8b3cfae0dccc2d28f5fe03a8ddd911c85623577b9ba37bae19b
Date: Thu, 13 Jul 2023 08:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689236948
