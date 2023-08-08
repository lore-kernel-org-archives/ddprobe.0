Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B66134BF
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2524C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691520188;
	bh=5GY9HioVFKvuLZVq/FzHWrfeHfPYJNjZsTFc/9WOwa0=;
	h=To:Subject:From:Date:From;
	b=rF9WeB5CvxJ7wGWWYCxrjHQPmDGC8s/5CafLgmypQWfe+6AY2bsihSYajgLCLO9o0
	 Aojt+f0L6bMC8Q8KjOW6RCRdYSWSEf/leLVAMqaWLg0U94iucrsofFeCqzVH4NuCMz
	 qrWO3dUcITF9eSVfaSQ9m+ONprgr5NX/4wyGCZzosL25IQNfSLZiCBnFq8Q1a4fgQn
	 rShQpOMQkvPcNL+uxTJ+qfUE2WCopMRiSt/6hEaqicA95aMzkypv1vV6yCtM0sdNBX
	 X33dsDLfRzx7LZe/sPYfkGuxyWV+wA6kp9rBLogYiqmeIQQg1v++ewME4kZncUMd6q
	 TytKFjCYVRtZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4510C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152018873.11701.13261140778650717786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09287d598853caea6845a7d71f6cf30443506278dfa46a23c30564ff1cc0b06f
Date: Tue, 08 Aug 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691520188
