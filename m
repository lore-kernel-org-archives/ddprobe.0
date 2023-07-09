Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8055B522E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC10AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688903228;
	bh=mF7Jwb2wT5f7zGqLJyJE3clZ9csY6ua7v7mRkRl4qDs=;
	h=To:Subject:From:Date:From;
	b=W1sgAWVBVS54U7XwM1AyH/FHojb3/E6US6eWQTMeA7s7vVQkOBSe9PpiOcdOC//OY
	 2DT+rM4q8SMGh96wx3rxtyIHqPHA4sKEX0cgoUFVneuzWZ318HVjPl8XPyegRoaEiP
	 nxKlM0sPlh9TsJVh5Q/vHJaaCyBpjmlhmjYE1ILJnCF9Cvmd9vBiJBvuDGP8Iz/cuQ
	 PT7eRFJZyaHxHDeM7hteHlgGlZpbu/kialc85qxorMzgVL/QdkDxOq6AixZcC7oOzp
	 4ONOD1Dk3UkwC8KUviQgLkvpPQCRvoWTwDfkIvqLK8tmdamMeWCcqKYWHxVTX8JWEv
	 zi3x7jK0qcGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96E8EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890322872.8928.17508415593928200793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9321f089ab53a3e6377fba2fb4eecac3932d159984b11a55ea50aed0cfb6a7b
Date: Sun, 09 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688903228
