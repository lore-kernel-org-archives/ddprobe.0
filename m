Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA42193
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E97CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670251254;
	bh=32LF1yAR3Gv9Y/h4B17IdCs/GhUQZMdlP31FJyplgOc=;
	h=To:Subject:From:Date:From;
	b=i+/S3hsocttDNE2mvfrJXg17CEqgFEegnX72F7MZHWmGMTLhmwjAzPNZXqGfdtloT
	 dIOl7+2NBbM6BAMOOe8O0udIA+0oTeJ4VK0qaDVv1UZgtBXAGCf5HaO9u/5Qszq3Aq
	 kZzz/v/xjVdSUPniy9uU6KqomKpN/bcVNMuNRsID3V0HJ/plC6BiVU5kDuV6sek1H5
	 5K9qR1n4uiTmLiCk/vrBt/YWj5CCPQcUrFBAbnL7HXGCmK3jELoaN5rnofPXX5Xiq8
	 xy1CMVGK7VGp4fVxGqqAo+E4M4FnRJjZU2GapPa3u0wmIh87WGv1CkeMLdovStqDDU
	 elNw3pLM6ycrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BD9C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025125433.25105.12895602742474655702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff573a6bbb31d3b578c5a29a1e66066ad0fd399966607c5ebe224c2f7d03ffd8
Date: Mon, 05 Dec 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670251254
