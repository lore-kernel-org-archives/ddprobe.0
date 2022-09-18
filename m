Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF00C656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DDCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663488653;
	bh=j1yXOcdUgYh70Fo+G8+LLdgN+gSx7pg2aTbJZ5eLl0A=;
	h=To:Subject:From:Date:From;
	b=LxIRW9d+Hf+dHJ8OWlCpaUWvEtM3s9VKxrV0jgdATC5Epgels54bH9aml194Ip6lF
	 E+C1lC5pTHOM51EV/VMJxtTO2ujxmQYUb675uzPS9zyLntRGj1jsZlM61AZ/E7yXSf
	 itvnaJOArg5dBn/YkRAmEnfMLbO6SfHHHDc/iyGjJWLJKySuNkc3kNspEMhv5B05RS
	 r3FqiCp10GtVtRpp2EG5KagfW2wVQoDMZi8+oJZ/SU9mf2cRh/Gce8nPtiNxoZwxZQ
	 u3MkxNYVOXUMJ9mJT2YOeVjfTfiQjoRaBpGB4At8rXY2lHSR0rOtBQFLFlYvMb9Blq
	 GrDxyMmZViXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4D0C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348865334.12026.16357222343793320081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b77866ab1a9a807c271132e5cf790924a5e4c2cc6fa638a6b331917b89000e
Date: Sun, 18 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663488653
