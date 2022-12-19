Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0199FA23
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671438687;
	bh=9BzfuqVlmvRnvnPldtCiO7wn3XqMYJZ+wVrxuUg+BLA=;
	h=To:Subject:From:Date:From;
	b=LBlAEXinI90HPj5C+JZbOy8WjMfCb3WlbBFBHm6o5wWcUo9G0N/0+Q2M0zDkM0m2/
	 mXd/Uq6YrYgI5ysUq0hvzWGGZZ7znC7YD7Nu20uc5jKIgWjvDUzTpYvUTaNfLiGU0k
	 9tiftr+A8khEMCLgXLFPLu8oUCdCqmZJj6R2OQOc2OC8rasyQVcPJQ0ph7Zm8LeRl2
	 WT6hQ4pNPX/t+V1z2t72LMkw6uDc1Ls8ezdZG78gHhCUXHnAcXHsOuFabkznNCQLXR
	 Gr69jYnnUHB8txlyLVnqIg9WYFiokCyodNYspVS+zWtjH3PJccYVC6Mpgpg79DOsuw
	 KB33sesZ7kmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B354C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143868752.32411.8034010685257000325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b607488087b5f35bf9588c1f07a07559a3d5a7f0c92328471db5786f79dcba0b
Date: Mon, 19 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671438687
