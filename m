Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA4B15B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85521C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672593687;
	bh=DHBbJDnSbygaUt00pyk7H5cmeTn5B7EgNViyYtPcFMA=;
	h=To:Subject:From:Date:From;
	b=S9k5FW4JXZw4ZBa2T7LJuVWAobKwyvjCLB8qmDdBk4tE5e1OLjrwY6bcu279GtMkr
	 Lis314Z6Qi+1qq7/PO2yLeE7im+jP/YAfx8gtKvPX4k/MlvzXlPHfwbLeEPblxNtWw
	 iPe4I8DqQTptd9Aj8f0yIAH7+5Puq6zzU3MEMlnHODijRqpc/oQU8CzsjL3iUYH8Mb
	 I7yuOyRce7iognZjmp7Tg8zrXUazAwEULe4kYOIJZdVQmFkoWRjOL4YA9WEZ/yoQLJ
	 MNds/596hbYCHvt+uEVrPuiAfRjNgFBkHdSCvTIbMuzAB5kuX65+0ffsfl3vyUklNt
	 YKwANp1KBLhxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6451FC3DA7D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259368740.15398.12317954190188674448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b358b00e1d182ac232ee2d94fb8e6cedc1c2a9c0bcf2ba4d3129569f489e04
Date: Sun, 01 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672593687
