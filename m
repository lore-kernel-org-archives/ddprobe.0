Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4B6259B
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 08:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E295CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693644848;
	bh=cw+O/slUA6j0Acm1ky2PVy8ORENEc2NPk8sFX+ouuIU=;
	h=To:Subject:From:Date:From;
	b=X8d+Oqf4CQ6/FfhC8QlgR03sgFBoEdF/1P3Qdxf+1Eyplm+4y3RuWrJfIuSx/XXmX
	 /6L3tbDsbVphjHnR+dXE6K09bCmpnNqaA8pqLJnoDqSa07JV4nw1NVvjbjREx42zee
	 3L/XaV8OJtHTnI53T7p7FifFgoXEu8SnQhNSBnYR8F9k9SMHwRMNFC8GIt9LVe4kHK
	 IXX5Leg28/38/pjDy3lT96oMifo0FGoDtNnqdFgeeuDz9aa2FCa2OPvrv8ipDB1Xir
	 Z4EY7cYvsETJokqGxB7S38XvQqjdHWxOQAGogPAZQoyZ56BSsqYjP1BLdMIOz04GyF
	 MiytD/+G/Hx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD66DCA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169364484874.22272.15534187009995984995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2287048491106ee7c6aca1a119efd13a16d777213f362041886ad1c4ebcb2309
Date: Sat, 02 Sep 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693644848
