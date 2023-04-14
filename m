Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BE8620
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC8C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681433465;
	bh=9GKP/L+B87cJHJT2+Q41bKoduHihGPPNE2YmIcLkEME=;
	h=To:Subject:From:Date:From;
	b=oHOk/z7RzE2lCYEvCLb8icDx3qmSlP+kFtWgpfZUOjdzspI1gzXNuB6sc7a5KcIO4
	 /ruszvRlpPzjyhh4IUD+XRQjjl07pOvvVNt81mUMQxzUJa640vERzyGc+lEaXpickr
	 B68alL+fTd7roxEYxUvbxkEpsgT32oF8JMNT2AyuuJ30cBG6ojWuWSu/aybWWmoG4c
	 8rXo2NKrU8utvOPnFRK9Xo4K2vzHDz4ZvHT+11t2qKU6h2gi3c3EzbRzHYu7jpzxco
	 CGQ9d8J/8emQrptAdM2HJbhnOQ0qSVzDioTRUxeWMs/MqihK0uWw4tyPHobmsDB+y4
	 uK5PEz1oc25HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD95C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143346576.30365.8138595749440744652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5203f6f3d3cc465174f78c137da038cfcc43e4f4f988a4e58ddc9f7d6c4b93a
Date: Fri, 14 Apr 2023 00:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681433465
