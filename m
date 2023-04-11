Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406488BEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3387C4339B
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681215125;
	bh=EarcDR/ANWjmP0wJj2tWQBScr+LFcC79BKyfujDst+4=;
	h=To:Subject:From:Date:From;
	b=WlqE95sr8A9i99XmCLydTVZ7FYC5GFeLnaVNp3wQK0LWN+w5yE7hFESJClFkxrSI1
	 3386Q3UZ77Ippcjms0K5PKqJPvJBcQdhtdGZOCf9moiAvJ5+FFc6nJ7fsMoG18ClXo
	 +1IsHGrh4Ki5CEP2nkmVf005tRQYS3JklPEHumf0alX0yt8UJ8OL/8eSYwXR6NCtc8
	 65+CQbMKTv+ak7kdHuoEKoPijepp2CGQnmpL3WngDLmizPhsudg5dmf9lJU0Kolmz+
	 nwMQLlaBsySIxRzrzyF/AFQg0WAaNsu0uGE6Kl3eNxZOEMfszrzVDiglV5rcsvUHTH
	 d3L0+FAXPTPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7F3C77B6F
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121512576.21105.2032668434791273731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb78eb7b19223bb2a13eb2d58dbff430261dabaaaa0676719c707328168c4554
Date: Tue, 11 Apr 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681215125
