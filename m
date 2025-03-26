Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331AAC8FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742972995; cv=none; b=ZA2l/0kuYKI9ni36XSQGS8zFEmC/T9xiEgC6BclPGEi1ficrxzRzFLUf4tJL7fyDYT+2NLE3Rk8NN73Z3HlupJ83V0/G3m+/sXsXGyd5XdIEdAoXmSJzQuniML29y0qOWV7qOx4SY9Zr4abs2yIlqIFJeKXW5WAmRx+kFSQK4CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742972995; c=relaxed/simple;
	bh=/5Ji+FvEOdyG3Fq43wLSkOZNpWPdiSiTYoCrasxkc1I=;
	h=To:Subject:From:Message-Id:Date; b=Iv79bxvTlPW/8YxbOPBq9eHmWqYwWEZWU4mUDODsoJmqhgtLRte2ofHLcb429Y16aon9ohLUDkzf5bXRBJNi2RLZ73LEq6Slg3IFReOTUXkhzzQ5/jWUi4cbL7GyirOEwftgT0zXPRQhP9dG2dhMxkJVxiSLRIH7WZP9xITATsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ7Db0pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ7Db0pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D9CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742972993;
	bh=/5Ji+FvEOdyG3Fq43wLSkOZNpWPdiSiTYoCrasxkc1I=;
	h=To:Subject:From:Date:From;
	b=lQ7Db0pemKCUMI4t4GcKoFqj+Y48gTaV8rMOEWy9lOkGJtV9QifPdJ7QDG1yTS3A8
	 iszTG/v/30Zy8sJm/wE7djNGrag3jxWnLACPv0x7Iuo1tHrDEQ/WvSzabEpWZZEnyY
	 D9C/VbYzF/qoEE04RQfTNBfhFEIFrH70iwZ4TNHQr6xOcV6y8YC6tz386sk+sUNj1S
	 NU0ZdO2K6T5w1u6yQpnJutIR29EatWD9ZFS6q1Z0olZW2V/d1RB8k01ZIyBFbWtfWR
	 TB+R7PzKb20WS0kFJ3GKoi0r7R6/VBYLZ8OwXEiCvDXnngfRcQ7P8xeVSaD6sHlZlP
	 LRmKA61+o1/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD3C3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297299359.20139.13962585355638400022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08975ded91895d23594bb8cca8a8c35439c08ead8826711cd952a30def43c18
Date: Wed, 26 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742972993
