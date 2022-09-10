Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726B6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662807053;
	bh=A7bV326cDGHQ0SsBQ7DrbJ94+LbGkFZdisRd2DFtFIs=;
	h=To:Subject:From:Date:From;
	b=U6v9mV6izG0t9jz8uUOUxO5oqTz2+2wOB+EGr6EhfMUNPA1caAzldqrYjZiOHg7Ly
	 uO7EWUFtVGt375sylILKMQivY9yRB4xqRIyIxOWX3CvacE+eZr1cC5pKXFIiDH/Bjc
	 arhuaSqs+jhu/qomaYl9UCUmKbcOlYNfQVGfzBU6I7xyg3TIwOtYbJRob1PfAISWI/
	 wwE9W5Vi4r9Miilbvb/sIxVYxoNWlUXryEhhSJVC9Arxw2dxyx3+x6YiSy+2yB6G9t
	 0HNzn7GU1AuSqSHVFS/PN9MebJPo8NT6Hjxfz2R8s+DNo6mUm1LeV62lgW6rB9TTvr
	 jDbPS1BUYXIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542FCECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280705332.32446.13410489323200611549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9209f7ed318b94e9d796cc1b120b598be6c4a6f88f024e38b9c8be04b0b3d8
Date: Sat, 10 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662807053
