Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B587746B8
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65FFBC4347C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668426054;
	bh=OxxzwjNUU0FspTrUF/4M8UxihmG3tYA/eYR8rRnRre8=;
	h=To:Subject:From:Date:From;
	b=RmTmRFR/4idO38xs1zhb4ky715w8hJm+6bQEix+H6beNrlrKD+t6F2nPV/jACXRVM
	 3XKcqO2rXu/B7Vg1ifeqsZg0OURRbl32xaxA9TsPI0E1qZZVbEwKBW858eys5K+4c1
	 CjRW4Tso7ni05BT1fNXqWu5+BflDZoG0zAfM2yoZkvpjy97wLmmGGnsCGXOl5wjiH6
	 iqAP5pKOpoCypWIXf9mVU9Zpm+nmKAIXzDVD49E3SvhKxVPpj8sPKBCpolHxhxciyS
	 V4xH6PcP503zBnW3IxqXNH8BBK3TkJFVAXj19FDkOZXiJ4wQ9e16xYQJccK5AiorrZ
	 Q2dLIK2bQqnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518D2C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842605432.27243.1912469653530622814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afcfd29f682870316e5b7161097a755c2a57573da9ab53a949c0fa4eca8b11f
Date: Mon, 14 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668426054
