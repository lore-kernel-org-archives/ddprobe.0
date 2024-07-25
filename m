Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066D11741EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721898354; cv=none; b=Etoho9KBjI+QxOD6iScfnEiVp5KxDAc1PeyCP5BZo1+nXutSIWhf3y4tVUfVQ0YFc9l4XK5f1luRbFT4zJ3XCn9rpZkvRf1aVQTLH9aAg2sJpNummzmJNAu7jIj6hHiLqk9KIeVeY7+UzLT67zJX5qmD/eWpa6sOxtCh8sx0kpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721898354; c=relaxed/simple;
	bh=/WW+VJ3FJxAxX6/9AkfaNxdEPf1tTZNUd1m331z/92Y=;
	h=To:Subject:From:Message-Id:Date; b=S/bd4vfeVGnO2zYg3TPR+0FDAcA9LRlNPl8fS11mk1IQpTwTWgS7PHHP0zLzLWxyi+E7cSpeatG1+C9eWiFILMsa2AYh0bYAG5wHc9gaj4Xv1fyu8n2PtsjHYve0eYaDacJojsjolJ6TEgcQa5h/VFJbZWzuBSlVftmJuc8wZt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jkr4rG6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jkr4rG6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B98C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721898353;
	bh=/WW+VJ3FJxAxX6/9AkfaNxdEPf1tTZNUd1m331z/92Y=;
	h=To:Subject:From:Date:From;
	b=Jkr4rG6bJof47lZXD1J5iPM5DpFCFFMtSSbMXLCyVCSwBSAHKgFBbJdevTyimfZ7x
	 dVVOj56PK0HUjUQcWI8F73L02uVNvvZfAx/WtNX4pK4Z2gqFPlk0iMxHFqYzMgz/IO
	 rBbY/i3GT3tCu++EWTCdd8BPtcFeSDKbGvv5gq5P6XsOil/RC9ZFltlzgENTmhyHh9
	 ribdNSW68OMJYfBpiZ1nBbewroutDhb2vm+x4XCmThPbDMZRhaakTo4xFPxnFM1Rj1
	 5bRuwfkjujcsTuWDVRvO/TSl3INM2QIpCtjvEvwu5Qf/zWkTorLxUyWRSvFcCBqQSS
	 BeEDepmRPvHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA9C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189835361.13018.17149230368847502484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f501bca41f08aa4e5a99dd5dee44181d317343c0693b97736838384fa1c8150
Date: Thu, 25 Jul 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721898353
