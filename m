Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0F51FA3
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1219BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682504226;
	bh=EioArPyvB+7LcBnye6SiajcYPU4vLch2IzOt50KFuAA=;
	h=To:Subject:From:Date:From;
	b=SES3bU/VrjHDBvYXHRe83qPHYvmaUrcTJJndzwbjYr0CK1oYIVBnaJiKQQDyMoWKh
	 1ZSIK8sAwHr1S5nsKBujD3UpsiYi12L4Dtuje4MQay/8EZfd9XdCcV9FDcNh0Su3Fy
	 1TZ8xaReMZzpL+fd4F7xTOtO6CHZMnej2E0U7Cm87jMdr4NxNPJfGo8yNyYjV2tlC4
	 sx+HsjRTTTud6vA223qnyWYV7iqw6icqKS9kXTqh4StHbHvXQ+c9NbCZhPAlsB82+B
	 9ff3bH/kafRC+gW8O4957Gzo7ImtVWoEBJ3a29IaRYqm2iKGwY7ZzHRcm0dbaAfcPG
	 iX/fqg6UBxs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA35DC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 10:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168250422587.21842.35868703271378442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20c57da885e890621c001cadfc68404201f0e0d1d0659aa3799d8104ec0da16
Date: Wed, 26 Apr 2023 10:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682504225
