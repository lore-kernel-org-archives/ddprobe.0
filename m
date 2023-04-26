Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3766A1C37
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3F2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682509025;
	bh=MsRTpljDlIebmyLFsEedIO5TQXPNMtwt+H0NKsStf+c=;
	h=To:Subject:From:Date:From;
	b=b9CTwDZprvKyKsnMzw5e8Yvc3NI2HPs8riOV+icExr87DmkA2ddhkarM74q7idNrs
	 8uX/2V6OB5MF+wMlRS93YOIBXT7hq0BNAcnDw7bqQys7AX17SOELFmmlLDs93iPdx1
	 tmVstppMEGpcAZpZryAafalKE3R3mp8wJgEqqpTUVy5NJy1KKiU7lsg2Y3hnl7ANH3
	 bi3kafrbgXnJJqedsge+tYN+yepKsX6tGYjrWlRTnfI3vdTiCYD6WkkC8GXZF0V64e
	 9eCRxDPojmGUicjoNxxMrJStTPzz+7fmZb3UIUWBziUYJ7Tod7WOqA5QhnFW1H8qUP
	 2uNPXJAmZj4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BF8C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168250902573.25588.8439758703665749430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f643af6983e10c16b37e54cc4523d33943a69a1da87b877b397605183d20adf3
Date: Wed, 26 Apr 2023 11:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682509025
