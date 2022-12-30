Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053AA28F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24E6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672422087;
	bh=YfFt0eEaRtkkb6uK6n1TYLpaGg0DbSeWd1+1J3/Lz0w=;
	h=To:Subject:From:Date:From;
	b=MqcrIQDapyBCXMevLJ7h9CQipswQnsqxqomENRsfPW7xINvgBo4yHU7vZFoU/i/kg
	 S2NNGBDOItrOIkYh4DJIBMPxuJE+w+D21YrW2gjsRC9rppOjTWYHB8urmQLH7hbZhg
	 89UzseUFydrGVFd2MjuyRzSz3otCQqhl/oybh6FBeL/NOPsrnEFY4osbbKJO7TU/XA
	 OPuow8wSo8/x5WWjEIcIIpWkJIkpaCvjUZjFH4lZsea/UTiaBJqndb4pwzdlWP1lsV
	 ZjG+m8YwZfN+a7yYmfBdVE5eGIzcv78zT1gI+LvTg9tSn/t4qjM8Wowb9JI3ZrDQ9k
	 hGvXnEePJ3Lqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 859C0C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242208751.5683.5319189624577325329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63584fbe59aa072ca229d0e220c45cb914a974fbca05d03b2fb6fcfd2e8f5b31
Date: Fri, 30 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672422087
