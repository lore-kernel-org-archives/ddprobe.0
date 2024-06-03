Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503C913666E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717431923; cv=none; b=mhwMmJq7NDNGnxNHXc1qlHuc4gZB22VdAa9t0wjD2d3GiWwpgJdzwLQg0cW/y3/90RQgGtaprFSPzrOXiZ5z+84GHRPTvHSamRs/o8dgeYDHxmQLZ0urKQBVtbu2BDEwrwWQXla2yoM1w7ZesABNWs7jKaF4ZAQiGAZpjUixzgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717431923; c=relaxed/simple;
	bh=TlF2sKLjF4ASy7bpwXrejehB8jtCEysOrU1oVdct5Yo=;
	h=To:Subject:From:Message-Id:Date; b=TNj7N49bm5yR+rHS6Ib902IifWp9V0DZ8Rc2iM+0Rnq++hyLbLZ1QnW2gn3oWaAXEp9mQHZKx8SdpavVQvr3F/fbYbvnk5t7ZoXpAh+dsIlTWpDzaRRvMVs7tyav8+J3T2uyZLBETzOSIw7Jctwch7ewXSSsc0DTecmnGdi/kbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQXikRwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQXikRwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8037C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717431922;
	bh=TlF2sKLjF4ASy7bpwXrejehB8jtCEysOrU1oVdct5Yo=;
	h=To:Subject:From:Date:From;
	b=DQXikRwMOKTthfF2LGbKpKuy9/OP5hMmdHqPHwTucMfZbGHV9Cu2Xm3hWUP4OarZ4
	 tuVbonwE/pUFlUoz7UPio3gWOT2BcrwXkxWB64Z+5/eAM8Mfe7VyUPAccsHocLat1c
	 R8fNf6tDQKNEJpqVw4y7fWLbdoT2mWZxLFJCWbh7yPZ6mjdRFwt0amWSiXaEYutBa1
	 RW2UDHMcQ17ruH/AnyAhmt3aO1K3+7gKnM0xxnRGNduDI8rYkSTkr3rzsE0MQzEWrV
	 ExQc8vRwvXTtPS250nDo0YvYoYX/tIU0s8CeSFAXSS/kuyaxBHDFiBVpMJOOPdHj+q
	 AXovImehEhlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A4DC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743192277.792.15189657642818622762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786df9befddd2392ebae77d369bfca658b93376dbb4ee43e0b253b9a107185a3
Date: Mon, 03 Jun 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717431922
