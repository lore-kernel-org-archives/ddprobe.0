Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1449A3DF006
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773252894; cv=none; b=t+o3y7pRhGNHnLon5wvbvx+cE5NRKfqRDjQLUkEIAJ6AxkGcCZOJIMiQBrtgFQ3g0WqLMtplUveREWAbvaPZfVx+OMkHO1l78M+DoL4NvXPI9BM7uurWIgED0amdbGFbNle3pHL5KE7k9TZYBThuX9/6DcdPCUNLLeCGuVGyuCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773252894; c=relaxed/simple;
	bh=rmDWrsaSaOuHso5qTg3GfXoXpS80VCeWmkYUJgC5QQU=;
	h=To:Subject:From:Message-Id:Date; b=Md7nUZAjl9kbCrV1WdHfqD2rMV4tZH98snF3GjSV9zeg5GGva1LMLvYn3fMyTPyN0ciW2gLHXz8s3t/fO1biubyUYkA/sywmP80mLpCeE+EnqRSbbL7e1pA0tHCE5CdbQ3qoW65DvvqGJwtEHHlgAoxoudHjmLGmEj8dTroN1TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7YBzsU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7YBzsU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F71C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773252893;
	bh=rmDWrsaSaOuHso5qTg3GfXoXpS80VCeWmkYUJgC5QQU=;
	h=To:Subject:From:Date:From;
	b=K7YBzsU0GEFMvqf9yNlKgtEv++HKkgqbmhwncL03Yj7Z+cXXYvjKGZyss7D+zzu8J
	 U56BAdO0ib0nNmfbOhrcAOHqVYZL+QbthPSHh3egb+XT8JqIR0rJXU6ZNWZwsIYbyR
	 PiI0EYICOlL41i36BOeLbh06onL87PU1U/QeIEjRDdyQ6MDnaTDRge3uI9BOwovahG
	 5QjcFJjGtbgIW8RDC1ZVBer0iOmCGj1vtgGb7/g7qZSL3rXluUWYr2GmbkSjwJSNZZ
	 ViwqTWx21TbkvMy14V6Mj299/Cw5NdVeuGpbsGDA7iDzfes0DXA1GYXI3BxBqSwzQe
	 xVZXhos9iF6Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D641125811
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325289365.31205.6617398595658031868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c91b6269ceab8c5a09048114c6bdd5549ffa75b2d3d29e2caa20aa5c2c3e76
Date: Wed, 11 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773252893
