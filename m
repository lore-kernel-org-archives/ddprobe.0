Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94E35384
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7782CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661556052;
	bh=t7iIeQALOZfWr34tJ1wrprKgkkxmjl8XtJsZ3WEgEKg=;
	h=To:Subject:From:Date:From;
	b=F+fx5KNbhShuYWXVr/VZvSTjQvVh5UBsrS1lCN3tiNMGJNCG7BmgZJC1Z9A3XPV6C
	 fiARkx4TI3CihfI+0qApxPKaNeq1+jinWWpNM+OFFYBXg/rmlGRa3OsJEAAxbmEfDm
	 gGHJGlmxjlpo/vBk2xqrohS80q08ZGHa+zAHjGjQSgJdLIljCKVNLaF+mgJ71D7kIz
	 zoo2+aTLDKUe8jQVrvgyo2Rs8Sj+7c6wtytT5TPN3FninttFtrdrHd2rJkDwlV7dZC
	 KYz4QFA2iKq1DNqqIeA7ZdqlmdL3ceAKq3KW1auX8Q8JTGC3u04GI5fTgvRzhdMjIW
	 HW57brA6OJPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A142C0502C
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155605236.9916.13076031103595359986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe35b38228ccb781efd672d7f32132ffe3d39e79ad209b12e1b9b708521ac7f3
Date: Fri, 26 Aug 2022 23:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661556052
