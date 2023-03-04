Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC4F15B8
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4425C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677896225;
	bh=abi0w9p9E4cb1qmdQYUXVyCuw61Yk+QeAg7nQEAboL0=;
	h=To:Subject:From:Date:From;
	b=CUL+1Qhodf64Zqa2EfiHR91XvUX3alaKBEmjHmSoKQOV0c5hco3AKs/dwBDzhOVpc
	 PCWsP3SOAQKT0PCYYVjJDCq9rjScEW4VgpeKfN154EghdfhwDqWucZPMWhMwV6N6DD
	 IiR1DEACipeu5sjKhIUO1xwqULIY0k2IY4HnLJJM3A2rX2uGqS9v6cYzNAL27K/+pG
	 ItGY8kAPwq/fahpoULsp1xxFKnuEdnkaNH6OiFKaA7atcsksB3AvHkonuT01mLdeSn
	 /KbHrQriKzHxJSizxAYcAHhgv2KmfVV9h4wjoiOkLZgA6QOSaaxADDWg6OM8LFKAf4
	 oHxQ2RtStbm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F33C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167789622572.17635.8349055136849645895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e89e51ae0c1a9be47e90a1797740b4e6c20d3e7e25ef54c63742e54cb5d95c
Date: Sat, 04 Mar 2023 02:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677896225
