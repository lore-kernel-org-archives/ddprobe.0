Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C7FED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF58C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673073087;
	bh=LEPrp9hI/Oj51qLhaLlwDJ1RvcYCjjZsxcdGuX7uoYc=;
	h=To:Subject:From:Date:From;
	b=gWhWruPjhPkiTtQa+0iJ6Gh7y2Yg7vtqrcHyv70qQMtnkvv2uSPMMNtK/30/wSLbj
	 EfvGQBb2WCjLpjcg6ax0a/mXDOhbnihPh9SbeN612GYgV07QQUSdKg87uM9DfF39AX
	 +1aPS9hDmeNQVroHSt6uo56DgSSacDDXlqLfN/kZ6/JybF58y8aqOi+2OPAbilHHU8
	 nsomuGcRc/B+H8NzD4rdqVIXnKosZH4OaiOar3MnM+gFmcsI6QjLuY7K0B4NLlGH8k
	 RjKoQNL+S41Y2P3pQa56SrIP4ylGuMK4mgMnXKwm/8l+uuVZE/7c5t8jU1fwFv3hgl
	 p6ijjsLbXrTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8085EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307308745.22476.2752284058273947203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e99f010fca417c02fdbc713b5f352b1fa2b9d76b81f07579c56a3205ab30d7
Date: Sat, 07 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673073087
