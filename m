Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA9A959
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB358C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687539188;
	bh=mfa0h/A8LK4lvjqdBK0hRG0PjkY7AEr2jOGtxugPx9U=;
	h=To:Subject:From:Date:From;
	b=IIq318G4RfSWMNRDs6VnbkZ+RO+Q3L1Q0QO7/eWiSMRalL3ddBTtGG2MrZtAYBbIX
	 j9o6vp0QdosRMGDgm3c4pEvMF7c2MONpa6PejGGEZP1YPQ+XaKnHvteaDjWupQXVZ9
	 kRHJ7tK7CLo8zHfFh1tQ1tWSDz7IWJ4GgMUN3a20OZxfBsARFOMKusNvh4jROPaUBB
	 +JyN4HUp9+utlBh4poGkEMXQf4TDpt7KKAxjfFxtcw+LPLJRVQbbv7eGBXkNvVWPV9
	 eVOjOdlHSRbkyLphf2DjzokQMwPkoFbNf7+OYKdcr2mC56KwgRrscWDetX54b6aMqd
	 YHV+6t4+Tt6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AE3EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753918866.7750.12969453736985159055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65785c11451d6b17fa484430b2cdb5518f54dc802aff2931437b0fa94d9bd99c
Date: Fri, 23 Jun 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687539188
