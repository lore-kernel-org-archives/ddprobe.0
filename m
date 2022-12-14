Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A0A28F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8E0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671010287;
	bh=Ya1i5BVaxG1jhzCQyEflhhNWqmjWPxV2bfzWv0YOTaw=;
	h=To:Subject:From:Date:From;
	b=mW9Af9dWlC0x+W7EgCIphJNGy7TOYkQNOoFgUb04hLUR3tz6Ci0AezUk30/eM+2Ol
	 iwl9hufWP3QnqcBjKHltqdXtKj6oWtt1Pb77/DrLS3O0CVy82giiZbVQskKJHPBqxI
	 XyK1ZDe27A3bEeu+ZVLZ7BlPcYPbCh9QPaazO5fNkLfEVl1QURbeG4xYB+obuvHCFn
	 l7h25J1j3zmA5ktue4OuSoYiedkc5dO2/pZ+ewo0sRz9VZT28oRDapcvbcGbIBm9mh
	 Pgjs5WbEMAvu+P1olLZdh3F8XdIyZKiZ4qqiqm+Zz1tOUfSd8iC/9sPxAotSfhu7x3
	 e0h+kFSO29gnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60179C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101028738.30633.16927456742529479808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8f2fed7a62dffb0f8103aa8e81c0e59961b439473037b87d15bb144d8c6984
Date: Wed, 14 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671010287
