Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5116C8C00
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A61C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690194728;
	bh=MYACe5Sqd3KhV9cezPT66qLHdFkqMHsO/j0Yb6vca1Q=;
	h=To:Subject:From:Date:From;
	b=otmoGRaXIc7kDozI5uQkL+T+ed2/KHInqXPAzqzkmiTW7s6mjWvvyeAbSrSThCaVK
	 xCOSHbfrbiKfzDpaxpu2iTblUTXS5hif2/O39HBvzvTsA9mWyXnrJxoMZCnWfHNbnv
	 M1oORLsADM1CjmurR5makh0Up/2svqEYB7b1rc3IlLg/6wdC/HEWbKCL/+vRnSk1Gl
	 ZlGduT4i4zglkflN+6iXUMLhENc6xdOui5Hr83hKR/69z/QB6o9C7kzjfwxM3XbI6g
	 JXVrRjDM3Edy+WrF36lzRz8AE3JLG0ePHRMSMhVPr+l4QnGZC+SKNPttxY6GkZZ/2w
	 SHu4j1DBap77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44CDC0015E
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169019472872.22493.816002354630176585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a41d1ad245870ecbe823b1f20bddc609d99a70943db910027b9a4419850c92
Date: Mon, 24 Jul 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690194728
