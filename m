Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435BC29B0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA57DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674412926;
	bh=CEH4s4WUT8mYtFx7fLWyaNcvFiyczJKHa/jHFqXo0KE=;
	h=To:Subject:From:Date:From;
	b=bX2Zp6JdJDV7rdZQi8zRyoQ3eIeaL46kkdVlzDQ735KSlAA+u+MozeAwToBucyHf2
	 0zo2LvczlNVdRr7lznyInEAJWpk4xFvScHklG1FZ7gMIXvNM70nngQm1BBcPX+y1se
	 2UWK958hIyC7RDvRagvAi9etZN1tzYF9+hUFbs5LxDbgDSrtmAeH9Q5V1kETbA0Y4o
	 zvPEkcyn0uByp7KJkawdqHsweYiOwgFLF6AFmoCvCLw5672IjhcNH9ZmPDx3fsf052
	 0iwTY3kU9dmWcOF+9F+kU1YlkDq/hLnOQD+94rOBfkMar6flUXt8r2xuJ8ibyZZUC+
	 QV8nVOoqVsHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3314C38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441292585.23881.738970034763160701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78924070ea9205b77d9fd7f189f26304c87a1e227c3f98ef8be73a6a5f6dc772
Date: Sun, 22 Jan 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674412925
