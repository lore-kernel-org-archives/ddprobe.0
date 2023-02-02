Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEBD7F
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10579C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 07:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675323966;
	bh=tauCiMALgp5AUc/vRQnh0lmWB0i+csQMXgZfdL9aq+g=;
	h=To:Subject:From:Date:From;
	b=gCYw7/v8sHiYIaG/FKi1qAFa7ZqKxZM3hucaKjIS/qVTjh+dRyafaMeM3y4caAtfp
	 jUrOnIi6w876+lOUNTtp/1PMRa+QCkGL5CiB5kEr34a/XRx/4Xb0aobx67VjgpWAXo
	 Min+/GR3NLhzxr05v0lAXytmq0PeGL9AFum4QVMGJDq1smP4nI3rnoouhBiyPxc8DU
	 q+Brp8erv2bgCQS2dGtyX34ioQbcl5yMIdOixZkYSbOOeeYEhWUCia8Vzoe0tlTEiP
	 P0KwhOPhqkYiWr2cAR9S67s7ry5x+eA6l7Slem/6jFDRX8z0+ukm/p42A8LpW8LqMe
	 sC3fHo6ocKfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E98B8C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167532396594.14984.15137881468756124204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bafd65f57931fc0606217abbfe9a0276de94c89c8f23a8a6026b38163ed8dcc
Date: Thu, 02 Feb 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675323965
