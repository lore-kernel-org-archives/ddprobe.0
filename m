Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7143215217E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719060743; cv=none; b=fQQWB8vbwDT9S1RP8g+/i1wse4PZCU2CSiVlMZeOz1xoaHm/eQlwE0UDOVIQ8t3y+aWjcos/FmDS4Qzkl+46XYU+YjENw8JMFE3T7M512ZzRtJdA8xG65IqLlUtSmZ5MTbVpB/n34D4dWmZB1Yo2WElro3AtkjYL9dshRsIxDKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719060743; c=relaxed/simple;
	bh=wPrlrxMAi+obW6B+jHVjAEht0B5qNp7xRJ1PmaZU/6s=;
	h=To:Subject:From:Message-Id:Date; b=WF8JmRGQwOuquc3e6R5f2Tagl5+zXdlVhl7bL6J7wHBLUwfzzuFO0Oc2NXC0PJyWGakncJw1+uFPWFECtT+YHXv5mHGGrB4EEra9qmY/DebL8ebO+7mx1kfiPuHgmaWRE9eEKP+1vy4a3xK9VU9MzlqsXuDH1RyHRlRah5hEJjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvMRjUs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvMRjUs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E839FC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719060742;
	bh=wPrlrxMAi+obW6B+jHVjAEht0B5qNp7xRJ1PmaZU/6s=;
	h=To:Subject:From:Date:From;
	b=RvMRjUs70dZsEC/7XqPnDYYJ/3KKXdkCAvNWIfk3mRcjdG/fhVYeK6YzPCePcevc7
	 mJmtBBa5b3DrYQf3/RWBEvjWZTmehMOaVV6PZf4q3viDds0hyPNmnym4hiplb9z4uR
	 iQ/DfjyZQWNsCa9yK9lt+NmkVIctWmqP7UYWcvWCbRXdhC63aliMrWU99CJC/ZBLqk
	 6oBJtrItXFEdWvB+W7J6X4XZiT1sX8Ijtvr/ExZmHAOpwTcpgTfDLrXfOa5wW1CLKh
	 v+zGPk5OppBdxMosc1cil5wSg2HB3rf46ziSQTMrYEFobMQfGamlVLoobRx5qmQ2d2
	 z8oQqhLz/UYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19F8C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906074278.20742.9164220750137500969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67391b1acc005cf4eeafbabcf600e05869e9dc5ae230a87bab1b50dbec8c4ef7
Date: Sat, 22 Jun 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719060742
