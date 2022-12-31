Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CB8163
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1E7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672444887;
	bh=IwDdDx6FeP93/HKqWBFGbWT+5pmISwDyF1P/kKb3sIY=;
	h=To:Subject:From:Date:From;
	b=BaT8FCkK6TO8yqjGTOJ2Scs/F4USpWbWOoH6OQnR16uomzVRoAmgqL345Nvuak5wI
	 H+0bdYbX2SkCW0X0s+TdioAIeQSkxg7RuCGB3utWDAVQyMJf5LvMjaO09ZNRsMKYs8
	 VbbZtiutz0HFHtIXPWSdL8TgMtJfGGJ1bsicpN330ISbgvU8/ViOK6QPrbYQQ/pKaM
	 1RQ/WIMnJZ6sGaOG1EWqqUj4nv6qJlwFWQ5TaPB0fbQCfjpkC32tHboCWbgX59Om7q
	 U9ZqFvb99DLNkhotrEA2K/POwN99KjmIMLcWKrBJIc/z128dPeJ+ksiYBl4iqhRYUP
	 EOBP857mytmig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1E6C3DA7C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244488737.6635.17279159307734143474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66062f23d3e22a9e9393d7ad60c5e4ffff02a7ffd9464a476792b2b56f0bbe8c
Date: Sat, 31 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672444887
