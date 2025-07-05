Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C41FECAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751739594; cv=none; b=sSSOqfTSGq5wG2cNC1YuKniZ6VhhaafOH3+GWqyr+0zJ8FrgxVYO+ILmXonNB2tB2cjY7bZKvqIZepNum/a1W3Ijn10s3iiJcMCdxJh8G3kKCnPGDzzIuse2XWvp0agyqnvtkRvkSaCSkcogDd3DXHK7Clm2AAAJp0q1qfqrBoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751739594; c=relaxed/simple;
	bh=50u+pmI+k6wvosQ8yJvJ3KpkOF4cBAapVGdxucDJ1M0=;
	h=To:Subject:From:Message-Id:Date; b=UW3+mV47B2WixUKjWE+erdGKBQgsOovj2IGDJE7YC7eCjFrgOMxugXMyz7LWJdSn22UEEdFSMivcTA/Gu6pru0p8sm/YM972rfw6rwGv1+7s8CpBFqTp/nfMkiE7X1XFMHNhqpuRAnEhRdsNLQMAC4TSr3i6LXcbvLUET/C5rCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXxPBWV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXxPBWV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751739593;
	bh=50u+pmI+k6wvosQ8yJvJ3KpkOF4cBAapVGdxucDJ1M0=;
	h=To:Subject:From:Date:From;
	b=YXxPBWV3Tf6nCGvevT1ycngbLEeLqlMvrDDXcU1XOO8KEny5WwPC4azgmsHHnO4H6
	 /KHHYU6oBCmbvFhEmf/SOa4ZM1wT1xXMN7cqnCcFr5qbJHUJhyY26/B2AYTFpKMSG7
	 WuNZsRLlM2sx9UK/JWVW3mVvx8Yy0GOAL/j/rzCLogetg5iR2cRt1sFuXooFHQFycF
	 4qkGXUJvFUaJksvC9uqcNtrfDl7vbnaxTc3W4cDEizVXeL5hSp5yI9LoMPzPzBrLPK
	 A3fcjZhIXeiNFopvQ+4rgnRNJyCIbFibaKhEzz3dD7yb9JWVcm3PxtHvGBcYY/XNTL
	 AkSBZhReQ8ZlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94955C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173959357.30668.6422370722806220249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f16de95cfaf9e0d481e0949191ec6a41ad391f7c1a51c5a71dfc71a63e889f1
Date: Sat, 05 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751739593
