Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0325D383
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709510897; cv=none; b=VrbKTGw+p8zU2g0LkRCWaswt9xv8dk8xql800Zyw/RJ8a7dQuUe5uyelFHiEasSb2yxcb0AZKt44M/b86Mj5Y0NmXINVtgonMBlrcyTm3ZaPVIre/8zEqv8MG/a3Nm5tMqaDgobwQUMc+jevMVIR1UunT4kkpmP3ooU5oO8aLEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709510897; c=relaxed/simple;
	bh=sdQjw6Z1quA9N70hg75bkGYpGFZdZWZU7DgCQqKCCac=;
	h=To:Subject:From:Message-Id:Date; b=GBhuk2xqRimlEuz4mO1/iUl7tYsROqoNfU6fPq8frsFjzUEbU/SliYJyfeuYbI4XqEuKxk8k6OkZFcEOJP0HoFLLZixf1uIQZwi9N2aUcz+e3orFG2FhsDiNePyYr96Zku+Cvn5aI58UdbnIIIDym7L0XIOMD9PfPEK/7jL7u4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzziM8dF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzziM8dF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCD7C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709510896;
	bh=sdQjw6Z1quA9N70hg75bkGYpGFZdZWZU7DgCQqKCCac=;
	h=To:Subject:From:Date:From;
	b=UzziM8dFDLQKrzJP8RORvFnVRuKvQFBGdciDBsb2SwPuiZ3mZlg2HjJ/dSRrVBqSs
	 M4c6ZOMk4Y7DEhW5E6z+v9lWxTIBGlHuwyviJ6HOhJvEArIhNQshYll1eKzCGXZ5vC
	 xZr+U7kj8S1il3tYHCK2j37v6kNAs7fWFLxvFSOuvb4M2QGMYnm+ChLzHd37ylNA3C
	 4Q0MWmZglZQAH0T+V49O8nun1jazsuWMQqzJlmRH2DplZrs0kO+8Usr7Y4NMPMdiNw
	 M745bNI7Nuw1bljtV8pBaj7ROUUc8v7FtXKUUFUSQIVX7dSooA+TjH6gfAyqQIFPjo
	 qxeY/RXIXXP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE7CC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170951089637.23944.13531772975009761804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501657550759385951bcc6add2707ab3496732fa164d0a94349d23e91c9f97c8
Date: Mon, 04 Mar 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709510896
