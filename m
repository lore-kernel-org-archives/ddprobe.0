Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF554699
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D4FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661707252;
	bh=OEtLA5dNCUjKKChQ02bzkv992RpVVgttAh9TerSiVRQ=;
	h=To:Subject:From:Date:From;
	b=QrHsT7drx3oGKma7oA8ee+4OkEmdH0JInZWh1nB9Tp6pfHTCWwnr9uXd8m3AvQlM+
	 SCJr2j/oRUH47B6KPeEclZmguwOT0iAvxKYXzDXeYnU1qF9JFISJhBuDAFBOJNkDsD
	 egUrFvan2VjQKTmOOgXwKuSIAIaBhpuTDYx+k12wODCwtUTZNyD/TsytlC8WkjyRpw
	 xFcOOz7GGEwxYxmsMH+oT+FKIfPbyBqvtHU8kbc9wNSU/6SESCZCz2GPI0o227i6na
	 XeZdgFWdl4RmAkfTltPLTbau2/Yxrhw7MiTV0dRe+TNXDaHi1Hmut02P4KbbP7I8TQ
	 mYgOYd6uZFgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C50BECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 17:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170725232.24888.15808012549819904850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1299b97e4ce1e37560ea331723f21164fb91c49d77a3efead6b084dbb79ac0d4
Date: Sun, 28 Aug 2022 17:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661707252
