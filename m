Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEFD3659F9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767979434; cv=none; b=pAoM4iiUbmaowJCtkkLk0eLLJ++2eQhWo7WGNA3PEo9AzhlhPYEEpoeD/2nTdLU+0RBY87FVKGMVnpYCempKuYYHNr3M97HzQaUOIdExRAZNJd1+g0DPrw3uh7SQNy9cL/CKs0Ewa5hlOcl2GrHXJUL2RPyHMC7+A1XcQ0N3whY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767979434; c=relaxed/simple;
	bh=rCzjBJOLIbusXO8kJ2P5mV26bc/wRXgQXOrZzDD0fAY=;
	h=To:Subject:From:Message-Id:Date; b=WuvxRRNz2mntwRk1Qp/25Jedy8TIKjh74qt+/1WKMUmgX931yR/x/cKojCDinkXt7vqey48ob99JDf3aQDoE8BnUQQgjudfrAWSdH8dkuHalyaeyyoe/UvYnQ7LhXL24az+xpxtQUxKDDTBEmZdK0SfRIByUkbxhKxxal9M4cw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYdqPtdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYdqPtdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF84C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767979433;
	bh=rCzjBJOLIbusXO8kJ2P5mV26bc/wRXgQXOrZzDD0fAY=;
	h=To:Subject:From:Date:From;
	b=XYdqPtdScaYBfHSPpdB+q2wLGLfG6hjNHpnTE+G+C1uiuD99X+CoenVnOo2f6c27O
	 JnMTNYQiH6Cgxwi4O1i0+neZelxOslX6DyUgAWVsVQUCRXPhUGj3IXAGHZ0YVtG22y
	 4BOz8EFSwSzyGR5x+kXPxxPoRdRDj3FmNs4ImHhOkLn4FBD0ok0OX1mdS2wJvP70MA
	 lw3ftc2qxrMmDFCvhYwBo0uLfiTyLTlWWnuXTPucCj1pw8Uduyi+i6cATP5UMAR5XS
	 NsIexmOk8gY1d5cAzJekh5QTiey3wczGggdZwvIv+BRK32HNvXj9MnIkXPfzakEbqo
	 rvIaCA0vn3JLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5FD26D6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797943358.10600.10244829188427747606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0db6cb52057a280300042647fcdee13a039af5161bb5bf934046473d3835b8f
Date: Fri, 09 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767979433
