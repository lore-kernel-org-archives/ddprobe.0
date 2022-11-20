Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44E1623
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CE5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668909054;
	bh=+D+UdDRSnAlstyrcb9SWEPSjvKcZezLYo7nmDD4K08c=;
	h=To:Subject:From:Date:From;
	b=R0S+3hVS7CS1mne7/ltQfnOTbNl0aWoJJZnhbxNSOTG+p9jUDjv2LlsEupDaG0Wa3
	 A1KjIQ/caAVyii6LfOq7A6xGUFnXQtYIwTM2XqVhxEo9j4//J+IO9y1Du3+C4efNb/
	 VT2uhryzwVPxAZoC5hJYaj3NiPUaWylpiIsOXX/p8HTTuLHVhRKJyit/B4QF9d6p59
	 va6wDrjazoLNY0xtzYCIib7cp3NFOIaoAvvIUqAUZUoHBKzxyab3hDjipG/ATuEgq+
	 7uC7m+vHGc7+1k9yhO9ltFMIAYMB89GVNj47Yh7/+soE9cne//t9f0hmPa9pZFpxY1
	 AG/l2UgO6GPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5571EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890905433.3758.11155336135301848391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58dfb84780a07b58dbad1d7922ae0e2998b6182b2bdc0fd513d081378a3cf71
Date: Sun, 20 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668909054
