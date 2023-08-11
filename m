Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E8510E4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A43C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691727188;
	bh=pEcs0z+fZ4Pk/WtVU+ELSj085s87VJEMIHYI4EAe5lM=;
	h=To:Subject:From:Date:From;
	b=uRZxT+ZE+GVMI6wjy4q7wu6uIJIGGiKRzZez7ytY3K1aT939pV+sWjWOahB4Ra7bM
	 +Q0zk2qA3NCpLKkUFzNlLvhYiIB0JUvbKMqaEiNDAD2tHhsFNlf6Y9ZBuW7mns4NrP
	 ITBPexav/PyTdEphLd6aOnJyuzcX6D4R0xq2pU+LmF7xyhUfeQzikjmKaeZytmWFhj
	 vM+EwDOhTb3iRkPjw0wsGCARaREDCFHnvBaNdRzVqRhPKPXJy5zTjBVvXEj+eWZwmq
	 oq8gNxD6ETNxmlkrCDiiJxisOJkgHfZNWXKwIrD/ke4KofKmKWNzC2wMucJ4feP/LQ
	 ISnSJdVqUvRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B7C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172718869.949.777077290231566435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3f93ad994099b9e21d2f7c9f8a59d8890cd0b4d5866c52deaea8c3c6342be0
Date: Fri, 11 Aug 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691727188
