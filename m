Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A2B7B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715BAC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663888853;
	bh=DNm5R8Q7pTX7j9lXu5jDr1jZ4UEmeQ8MtTm1m+0ZJAk=;
	h=To:Subject:From:Date:From;
	b=oNx2csk0M1p9wDMMdu+AuuNr6Ihh+5Ex2+pgNbJO4rJ/qTfQ3jxlIBDH6mFupfAP/
	 5OuFyKMSqcoy/HL029Pu5kgN7rUcjY185/h7QtiCjlM0mabGoWVv4gJnNFFUI9SIhB
	 xII/KLzyUslCfW5YdgqVK8yOoJkeCTTie6K3j4Ds7U8zsrD3zno65zCn2P0qqPxD5i
	 0gnqlgp+cQVGpHirvQlHJ5QxV4CZvO9tpOpaO0B255gASern/xWojhbN7gW4tyViUb
	 7e8dKYq4RmTZEJazO5hiq6aQT4k88oW33MdeGG1+wIiW9E51LQb/KLF9i8pPvoFMDV
	 SGJ9IgEgC5cpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C0CECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388885333.14969.12308568115614065564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472374ca38f168b03807094ab458a659201ffb54ac498b998a56e968cd049d39
Date: Thu, 22 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663888853
