Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CA6637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E45EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672807887;
	bh=llLvotamPHGFsGZyR7m6zds14HxO6ohkVEdy0a60j4I=;
	h=To:Subject:From:Date:From;
	b=XD/q48HBUdVVjytbpytyUGvqDXgA4JJD+w6gv0eMi9dEpr60wjfZmhc+8z328F00D
	 GCyaMzMRUm01+qPobfxWCut0ctYVWyCSWMNlFSfDLIea/8QuHSs+VzJ/E/OE8PBICw
	 21aVgyHrT4rwsLlyrs767HI6LPc5i4Ak3UAqq65ZLJBhmSf89B2xDtZPR9ATw0HEbc
	 0OwCCCE82xUKq2zOF+qIUeMPXG8IiQxTAiYHy/VAK6D+G4VXQOtVBXtRMXaYjMtwpL
	 reAcLezEb5WYoPgWj62FYrY/Jgwvf+ONLIwKEKqAfcnV8R2isPw/LkboCV4B5/H69f
	 IDNx45CU6oVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF3AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280788742.32680.5299214128096727696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fa4640f806bc04a5a9451d9c3f3e70762e1bc20cfb87c42474a6ebe6b0f736
Date: Wed, 04 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672807887
