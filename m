Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132F73876DB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772824494; cv=none; b=iHxLruHyKV5W5f/vNrNSJS6empzg2ZXgwe/Rp/OaWrSWkvC9fa3mRO9GGXck3gm8nOzzFbQH65OgvkJMxYdv9g+AmkCNVVYL3LK4SU7kv83R2NVtzx8xcCeDqn6vRWnsS3l/KQ/yHZYN5t3z3vL6suYqS4I93jA4BvjceGEL2AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772824494; c=relaxed/simple;
	bh=koVSeQVszYRVYxAC0wt/ot2zQNCs2mIXG5M7dJcHuk0=;
	h=To:Subject:From:Message-Id:Date; b=satGEC4OZZPeJn6OCJMaPI8V7fFj7C19JQOmybBgpBfthDqM5S+/u+gg6kjYJ8dahRsJ7I2T8AXYCpx9f697I3i5aTMCtmDOhlEKvXaCuXz29G1RNnG8qwm958Rr1W1NRNPQneVfuHjbKOoKZD4RGFrcMLHKPvMCEBtJ15Hg4O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq7I0Pva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq7I0Pva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772824493;
	bh=koVSeQVszYRVYxAC0wt/ot2zQNCs2mIXG5M7dJcHuk0=;
	h=To:Subject:From:Date:From;
	b=iq7I0PvaGvdEpXrmVEav2OQ2F2icCkun8BFCsVdgH1gX4IJZHS+BshxVW4NuhwQB7
	 vSI+/095KkjV4Hw01Oy82Cul7Doeszg1jmfa6DUntHaBfog7oAAt9vep0PiQLo4wak
	 kEQgdTWPC55wAiy4wHvEXWFofL+R9LhXVgUn2Cio5ttX9cbo90m+J3A+8JMI7uNbEw
	 vxXaRhPf0Bs+t9Git9kTFD9fUZ8qQXcW+E02PvpqWODMvw/NvpJ8wtn0VSNAQxS3JC
	 BBuR9u9EOVBtoSJ3EjEPHMOdlac9nozX6yzusOKiBYMoD+cUT5fTtU+UnmcOmCPuaH
	 buStzSlbBbdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91687FCC065
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282449358.2608.6211012508952941032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ba0e08ca9c8d18134d7c66088a88c7f2e109de4e8dde81ecf3a19dc39775ef
Date: Fri, 06 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772824493
