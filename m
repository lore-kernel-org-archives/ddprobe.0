Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7B15AD7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D653BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692137588;
	bh=v6WY84uLs7b4dPtC7c5tcPGGvTVOLWnty1RYDMgSIEs=;
	h=To:Subject:From:Date:From;
	b=Pe9JpWihXYZrPx1/+6xirT2h+8m3pVShU2hIqxr4m5eHNGcNf3GQvEOrKqW4L0jQm
	 dQCh9iQ9cS5sL2pbm9zjWP6oWn4cVERYtATdnipEe1UmvmkRFLWSPe07q+EV3uE5/S
	 599lYuqz8GQ2AKsHg/DOUm/SclxtdfBwXmXG5Yo81h8I/63Nu+cVywkOjyhLZh274H
	 1yhn4g5yVoGY0n3WVaQQzTEJ73ZCVGSy6DWLe2/nhOjBNQCPsjkpJFFOF3t4Lfg5Be
	 /WEGjjO2UIbrTaDbU2JR+77qoaKlHRnWgengY3kaMokx+z5uwd86NjTT9K8dXynu8K
	 d574O35No1gjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4884C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169213758873.2149.9713758049534748261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b4a72ebe2aa10f39507d1f91ece438be303d4d0a26abc52c4bb7aebb29a788
Date: Tue, 15 Aug 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692137588
