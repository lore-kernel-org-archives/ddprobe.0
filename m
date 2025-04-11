Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE6478F45
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744403994; cv=none; b=uvI7tW7jijxe8CmlM/kAI0wFHmAjt18K7myeFzk7zbLVNxozL/z6p4zjHOroA58g7bIY4Cmg7DpqqgXFkDswbMa0iOE3+mQkdj+fYmyzauJkZZejNh6f10BmPjCvIiBOb1/omhehGRVNFP2uy9nwJhljgwQFkdbtnOg2zL1Oq7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744403994; c=relaxed/simple;
	bh=qoRHtvH3SxARsg1iRr3YWvKP5CMLsnMZWIkrhsHzHxc=;
	h=To:Subject:From:Message-Id:Date; b=Y59DV+fSCMjLWbQORlzcGGpmDMcoAAYs6d/N2s4vtlnkufBPzC6PjoTcyz7MjQYfI5Q7WCSsgjkOpKd630k8SkgHzniJUNtdmsyovXR4/HN1+HG1ZGs7X/UjeAbnE2QmDVFwo3IWg4jAzhbg1ZnsftMY4UyWD4bbURR+5xYBnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6lNal9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6lNal9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDEDC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744403993;
	bh=qoRHtvH3SxARsg1iRr3YWvKP5CMLsnMZWIkrhsHzHxc=;
	h=To:Subject:From:Date:From;
	b=W6lNal9VcjB+Qo44YUUaQBTzmUYn154KQbK1TjosRh+S0SOaUBWGv+aRdX/5rwte8
	 8ZTOsBB7nea/9cFCi6O4lVccSEY0ATAe4PKbZo5dGfRv+v2H3V/5vZZCb2JQUI6xjj
	 AtWxC5+aMvmRuY4zwi19B5ggq+KVDJS9xNZzKmbukbjuSorNNSeA/FpN6h3Dy5TSU8
	 aZM41g56WW2TtSZn8b5nFZLMJv5WT2jX0ne92THok41xAgI8lyrPUrHWVp9GuSKuE4
	 A+oSjpTgwgL93j3rRStzXFqh5FyKu0+Ws+geseRAuaIb0mW+wzgl0KDMooxrYThbef
	 p4ybXAlNVbmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBFC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440399361.23216.3015728719030939265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c38b47a4221b8c8c195e830239877eb4d3de39e678fab04a1f23420dcaec50
Date: Fri, 11 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744403993
