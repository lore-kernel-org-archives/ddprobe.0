Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3B723CD
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC969C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683469085;
	bh=0STj+ZiT2czY6gkRR0suZzM9xalEZuJSkOwynikkikM=;
	h=To:Subject:From:Date:From;
	b=oljwL74CAm6Unsd4hOUZMshtg4WvtzwLWklRUj7dBdCUSafi81mczVt/K0+3VNZlq
	 EmR61doHYeXgnNtDlY4SNFl65F4MtukLHP6v+wa20YTqi94BPFVjGpxCtNFMmGjUkD
	 or2wxwArV+zzgFJccVlIDVPn8yRDLcnCkxYYw8E7yLSWESCVbwSLTmDR4lTVYpCZ+C
	 ussx1PCJmm7fiBeVu9DRRUL/4EMYv1KOHMWgiqRI0ZDdWD1iFK0SCOlkEVdHPyjXW1
	 DN4plJcJnVu+CFj5vcTQInipjQDbZcYGdcoPqRzO9ZLzZKWXJNrzlvK/DLZaBhYNhT
	 G4DfReERe5Xlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEF7C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168346908575.15238.1179093485119735891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542e37e1ef022996f921d99064b555659d8b83872a208eae3958cfe441e1d750
Date: Sun, 07 May 2023 14:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683469085
