Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6699F811
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DD9C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687756988;
	bh=1G29qHUthe9PJTK2D8m4kdK5GthtVZsTRvp7bm3W/bo=;
	h=To:Subject:From:Date:From;
	b=G9AuwKIdCzgId2Se7ZVNhXtjITjhMkSIgGOYuca8vQyHAzuz+PI4JfKOD7WBlezuu
	 O2a+dQLwwPAo9FBgrNihXp4MaCJER4bDWQ2/BkxE5oxA4JcojmkFkXDCGuFKK+zF5v
	 A4mHstI7xOwGp1dbComy3lyEAcN9+Luf1hGfhrb6ApGi2lECe+iJslrbGY9cykUVbW
	 rDd1gJk4/kD1/OkZYlq/ozrRmnt5Z7p9zb/ye3ju4iwgAQdfI/czZTpHBuAC97GSK6
	 iWzEVFLPfaT0vq+7ZzVg3yfAPTOzO9fWGrWYAyo16XaMo2Jvea0a1lD6kicfmNT+xz
	 bHPyx6SoEnZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B729FEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775698872.23234.2119525437138821167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0a834f749f0be32a6d156aaa635d6bba682082bfa3dcdbaf59cb33940f3361
Date: Mon, 26 Jun 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687756988
