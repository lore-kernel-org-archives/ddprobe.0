Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0AC1FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ED5C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664602253;
	bh=jMRTrrIZUQ2omkEJzkGO2IYNIzD5nCD78xPsu/KurqY=;
	h=To:Subject:From:Date:From;
	b=bz9EewmWb5yEow/uFgpcuenNpvHS4rvjFRv922e2b5IiFLhup8gufUhcG5L8QbNHC
	 p7Pt5SEsUMM9OyL0Gqy6YjXjwU5mekpfm6QAJWVPdi04Z1j9yXfp4LW+qf+mv8hK/4
	 S29XPzLj2CDTjnbMBGmpONXS6IbuLA0XedOYuxT1YTdQQcmAlsfGEZQV7B+DtDii7c
	 A1pA9RWnHaHlaaZZDg7NKTkc6bECA5QLMNCx7qAiSSylGELOuO26f3dxAyPYbhGT59
	 viLm7cnS7rFmistfgcr61HfdwzTix/QH2uAXwVXMcEOOa2rQ5d0ewN56njqu03ecug
	 2u+GGHhMdkXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59110C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460225332.30979.5349867818836739544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31fa3984f94ebb113d2308784657f1cb564f47f54606ee98abae80aada30e04
Date: Sat, 01 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664602253
