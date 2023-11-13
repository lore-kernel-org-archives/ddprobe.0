Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFA21401F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRli2nGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699859896;
	bh=UnYory7BZB3UKaf4ZONWF5ccIweZ6bMGVkSLiWMz8cg=;
	h=To:Subject:From:Date:From;
	b=TRli2nGfhuRjkLk38lm/A/ovG+ecOZ1an4rTZE2VHwiINaI9plBq6GQ0t4ee60Xmc
	 t0P0L6e1wb5nJS+7aNRsZZ/DDhyrbfK/VzKJLY4fBvfwxEbBd9nAgoxiZ3+CQm2cJ6
	 569vkq4CP/2grWJHJI4phOHmNkC5AilyDc23AVpeJ+WY4X62X1QVZtd7YXGOM7Lihw
	 m4sVGD3+f+cQh9bPXE9zyZFucZtb9FHvH+OSD6GVxuctSl4DAo+gnQMDoT9/FDtMM5
	 duTS1kWQCwO/zW/wYVuYRVFtHHEA03U5QXRpev/GFY4ZjqlQO8SmTbB6WE89u0ClxG
	 QwpJexPwoVPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 809A7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985989651.28061.2734537856751929379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b5e8237c2f7c02114d53dbdaf8e380185d3db9ccdd7e4ba58a146db7e314d6
Date: Mon, 13 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699859896
