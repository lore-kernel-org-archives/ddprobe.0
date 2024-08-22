Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237291C6F7B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724325954; cv=none; b=qSdda3uFKk4Ava5+VZXjhlwNQ/DJZN5SRoTeXNkPN2jlokyp6nc3c2xOhfybjT3iWtb+5TXbkotuUEZ/KW/PxBBZFo/8MrF0574SLqZL9LJcjXOB/jRSRTsysYSYQ1Xrvr3T0zqSgmgjCo3Y0Ka1qV9JrP3ax8RZz/6KnhJpSMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724325954; c=relaxed/simple;
	bh=AYWK9aoKe7VbYMsg6RX4MVcn+Sk+uxfHIiQ+R4rbbZo=;
	h=To:Subject:From:Message-Id:Date; b=fu1U5Eif4YsVqn5CxRqW44xjOq+v13Xav10FdMYZ8+/f3Mog+XQXdi6tKnapgIZQ1V+9IFN9xmZjaKSaHRm9xUfL7qW6mrgJMwRzH0wctlKZIPI2zxdUKkYoSe5a8e9aOwXRQh+IadshrwpX+xLRIISw22z2vyruqYqj1Kx5wLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kna5nIJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kna5nIJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B7C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724325953;
	bh=AYWK9aoKe7VbYMsg6RX4MVcn+Sk+uxfHIiQ+R4rbbZo=;
	h=To:Subject:From:Date:From;
	b=Kna5nIJillNvhp9iEESuFNHQfgmkgUaIfqpplvZr0prGJsyWb2OCGIkt8BUL3ycbo
	 /q05/dnPkLc30O1OTvI1XPLe+/bi1SwNv7xWz/tBJf+cV8nqEzfzyBimBBX9wpzlmQ
	 a22RmBGNTmxhYcd2FDaOe3POPrd0SLxq6D65zH1axXI8sGzUsK4MzydZWDOWZ/mcR7
	 8uTPlUFZoc3hB6gFtOhc6MvlcEdTZfalcMRw4biJVw3XawwLER+Y4ZA/wJz3ac14Nl
	 ouO/vTzSGvc92OzY1JPihKIijPfmnJnyWdQ0zE8KQsn52q0aSO0plzuO1EMpbNPMJf
	 MMVMH2Mvb+Svg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0859C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432595363.18250.10130078155260705952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bec58e25ffce1569ea3e90c687cb66e14d8b4e0c7773e85ab5970383ce8b94
Date: Thu, 22 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724325953
