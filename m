Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F48315B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771DBC4314D
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667011854;
	bh=SfpV4QSM7cjanWoBtboIl+Atikgk6imwTaScd00UVak=;
	h=To:Subject:From:Date:From;
	b=iGQCbls3WmuKW/F4uhOz610S3WfZ7P78IsFXiemurySKEffOsEVFT2r9m6F25r3ld
	 cIrZWHTBXhMTOHVDwP8otw4G9SGmQj3LFS6GAJDjwxDLcLDjFpZAP5xd5hYLMVPklC
	 dEkS7PIDu953VZmXi9kUgBx/JdN9NTAy497aUBynYBp1Y8z2BtPaLLz4Yl+4pmq+q1
	 KK6DrXgEg1vYS4uZFOYPceuNB8XxRbGAAMPjSXKzuxmUKdiIS6LLNUBhcPP8D6Tj6U
	 iQjl2ZqDzN/83NgEy8h+WAAE4UXA6KAH6uLJ/49cvzoza+Oa4bwswOt2EX56Ki8bO1
	 ZPOj9jSI1nqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587FFFA3742
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701185435.16717.7340874783042653086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c66a375338cd3e90eab022bccb6a48dca7d330803ace5089bdcf53273260af
Date: Sat, 29 Oct 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667011854
