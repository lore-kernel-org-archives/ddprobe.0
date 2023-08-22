Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A2529A0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 10:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E37C433B9
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692701048;
	bh=QAlQJT0ZBppRZiuaFMJiIenJIFrPpCsD2cLZj0Qxh+8=;
	h=To:Subject:From:Date:From;
	b=J+vuW31wotarHgs+vcpt1Uy9EhXeGgKgJsnFaQZRQhX9VKa1O6UH80xu61KhOumdd
	 pYTEd2Yw1uRfjL8vfYG2EnseZ1ivBTDB1FdsPFKetetd3Tx8vFSjdbPnBM7F/XY8id
	 nyqonC9nNysBOlbJqUl9kqQeK+gngjcBxVOnTOlxnb2tYFZf8euZxrTzJxrRtg12XJ
	 h/6yxwR2YTYylk/R2e4ZSjBjxbeUzP3BBau0RJuIMpLKxWFI5ZKYTD5+0JxgMAvLVo
	 JZfZAsEhT4MWvhoc8RGdO799P+R2Apmb/WgqL/q1Yd89nL39LMmFSFZYaQyMxizY8I
	 faDHwr7E4rABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CF2EE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169270104879.4745.14655620729056183305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f369e7427b43261f6c993ff944fad2dffa8318eb3b1245bc9f0cc4a407c0a6
Date: Tue, 22 Aug 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692701048
