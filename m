Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B42225D4
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715519543; cv=none; b=u5WW0gdmPSOL48SCwAmPUmK+fnc+PlIRJ8k1pckH/OXESughNfWlpGt/AMNVPrvoo1IdyyOaEpV3hvJYmHhMGX4wExbfr3p0/C/smvei0NEAaXurxk/xC0IVBfunJJwLp20O7BPNQgvy7hNe2DMHdOor/M0tKb9txOqF/8uf+qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715519543; c=relaxed/simple;
	bh=gA9q0Yw0RQBC7ANhOPDT0RnWhnLy9VDY0Ef67PyOYlY=;
	h=To:Subject:From:Message-Id:Date; b=qwP9xsrHxsV1JMPNkLMCtaX6LsZ/xjIQ+yqUxY6U9B3vBoVB7aGQxJyHXdXQSJCaSBaVIdZL7/UIrS1fo4k+VuxwAyX9W8wdqTYxjQV6kKl2Hfy7oc1/80I8glHTdSxkQjbVbzjRPQmIZg4q/CRB6etVdSHsHZQmcsG1IYGFQV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0E3H/t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0E3H/t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE25C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715519542;
	bh=gA9q0Yw0RQBC7ANhOPDT0RnWhnLy9VDY0Ef67PyOYlY=;
	h=To:Subject:From:Date:From;
	b=B0E3H/t1uJabiQZp2dlCr1smotz7Oj0H3Bue+KvCHLRw4sz2CdIU6B0ijgAJWIFl6
	 uoTiwg3Q7+YVIakv2YqDD7JS3J0wD/BR9cA7HqvPlTr7mXEOcCuqCSyvS/bi29888E
	 bYVX2ZQtV+770XGuuuwj6tr2XFOXAtKxICXILYg3qaLDvn6tMsgHR3Y0y+p4EQDgIe
	 Yzf5PehOFVIWC2vquUIqz6fkzDPpfJRi2FuT+sHmZQhTFOTrZr//CRN+EALp1d6uKk
	 qDZCG1koi2sy9zYWsChg6ikZPuDZl/Z0zpcRKI8CFpZ++BP+5q3EsxPH/LODdvnh4t
	 YyuuAHFrc9xjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76BBC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171551954279.3064.6141180494229324823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd894aa53e9b5010d67cabaaec6222e9d57e4a16759a733b4f805ebef9d8207
Date: Sun, 12 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715519542
