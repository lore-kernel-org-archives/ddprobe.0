Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4894D46AE
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C474BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691990588;
	bh=P8YQ+HDKAxxZr8bsAozJxIiZKIh9QzKJEX5v3qrFiBI=;
	h=To:Subject:From:Date:From;
	b=qJ86w/CHqYQs0kM89W+VmsEIq3D/IiqW+lv4jJxcpzMe7MOmmKQszlvYM8xrfWgRn
	 yQcoWYERG1R8fvwWFqyVUwshvA/oucyt5FMA7D3gyzVEaxlFZxWpOe16D0CLTgwDCp
	 xCj0gZMPONkNGHmaUO9vc3v0lEtJ0HfoUo1mPg4f6r2HC4zWH7LKmhuvYo/WEbUTHN
	 wgJppM6YjqaR9VPt5Q2xjDoZ2Jv8KSuDaaCHtpeymPWn3aqGdDwcHQHi9grTjaBT7d
	 XTdP5CyTHsbDm3pSwT4y+8ZXxUARxc3Yd6nUZ5amoabUiU83D4TExuSOdu+wTKLkTO
	 RVzVVglELgJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3215C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199058866.28461.10682598004893131821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fecfbe0152fac6d64fa7b2a7e79b507a84b77544d379f2e4450f30bacfc6857
Date: Mon, 14 Aug 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691990588
