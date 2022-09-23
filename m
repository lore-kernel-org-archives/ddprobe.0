Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F3615B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EEDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663894853;
	bh=oP/UlGJCDpSdplbPk/m3tia9i9LJxADnRVGElKbctPs=;
	h=To:Subject:From:Date:From;
	b=AG+3J/xK6S2Hjxeq0jc/w0z3W5Uck/d1YSVPghxaHJgUfjD5ycAQfVgBRzRJjNEnz
	 sie2wcxWio3riVC99niF/mKghdJT9IT3giikGUuKhcD+ba+gCD77CtC7PwMJ6HzjwF
	 ry7I3XNToIbFgwHgBCX/6yXAhagxmPnbTmzEG4N5PE/hNUdkbmrF3kpZhYtGmDJCTJ
	 eS+iQb55tMm6xJ+IwUkb04f50+kA8OCR/sV/6zOyKPoQAiuxsBqQ+vhgJ3jvbRD59R
	 X3Mgdc58o4S/69bCZmZHEUqU+e9Npuct3Zhdv6674I+dGvjtDffGzo/e8lTd2oeNiK
	 4Lxomghai9ZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D50FC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389485337.4797.11849732715813153180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b80f474a1b1fc38c417d773ba6d598f6f9e0d15380cd0dd70837328527c0d2f
Date: Fri, 23 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663894853
