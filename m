Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BAE20EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F874C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670362854;
	bh=d0Ct/eYDt9P6jK+UcSJ2byB6OSlYIMZFKGfRe6dMHjk=;
	h=To:Subject:From:Date:From;
	b=gpyKuJsulrO7PgmSNGUhNohSwmE3b3ncIJLpf6EMI+YEWJsF40ZdMmEMszOgzShdL
	 TiNjxCROhRG9KYpv0sE8clmPReLF9ZO60jjDmFPizqloA9gday22vbG2whG9eKNNrF
	 I9shAkK13OQkf5rOGbQLxqiH3KowSBxpUl7ENO1FXo6k/x7AZu6hTUGy4Wswo8SWZQ
	 rbhPdYFTkNX765UcBtagTlIO91H77rR4k51id4gGaDCGiMdGqf3I9l77qLXYkwlh7Q
	 DbGk5Ku3iMLgt4JxLx3rtMYfHoZ+lVsnY7JirCQNn383IGyQwqq41gbGAxJGwq5VMV
	 gMqlKKDRKb3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B59C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036285434.8779.6551891964528048270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ec2aa2c4be811cb223619a6e46816281700caf74c86d7467d1f91bfbdbe025
Date: Tue, 06 Dec 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670362854
