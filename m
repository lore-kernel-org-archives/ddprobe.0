Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AD1383C77
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776668254; cv=none; b=nsrUqkQyMzfZ28u/j36lVcQNVkRSoXzEuvR8lcaw1+rKa1ETcIv9HmCIvLynaj3r7G2YYmzvN+rvj1t/UkGczKKJx49K/nbgCXIb+zTdwfd3+flkgvlWXnfNZDZDZj0JwMY2ThqQqDZPdDGWbZbad0IQbFa/zqaRpbmzQ4uATGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776668254; c=relaxed/simple;
	bh=R/j3R5o6PbovDtXk0+R2DICmuEdXlYFCfQXlRSBmGiE=;
	h=To:Subject:From:Message-Id:Date; b=SyRbeL25YWMt91sbdvy0OYVAXUvJUDywfmynSvtz3p500MYfhjUvXR6Bn95P14w4Zw9VdEqC/OROdA40mUoidgvWc4NI3G74tIpFknDzKol9OCohm3vmPAouckMkIeYsgNtqBzugJ9HhujECLhHLXBRTPo5Cpvkec0HkLp/0bXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+xrY3uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+xrY3uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7983C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776668253;
	bh=R/j3R5o6PbovDtXk0+R2DICmuEdXlYFCfQXlRSBmGiE=;
	h=To:Subject:From:Date:From;
	b=M+xrY3uJUL79P5kEbyYwY7KOdCxmxzKSrllKKQLCpY8GUWZzseD23lpMfo/Yp/7qa
	 He7qG922kvdev6pVfV0qKAl0wBe6eOJLCzyQ2bePRwCx9N1QR1gEEQpyNqWvG2GF6F
	 uG88Pg2rHYRIRK5ENlwPlMOiW3qYa18TnOQkKXolqir0SceNl7xfzRGOaB3H+4/acE
	 tLxmh1IQLk/zKu4D89U/YLG03uuj9MBUKvmgTp7937pjPVDRHAZcE04MY2oM5B0htl
	 vpsrFqgo8s3cHLp3LBcAja6VnmvU/jJzUOG8rdRNg+oGmxQQlEnaDlHOw6BjXfTTYj
	 kKwWDc5xNnkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E01F36C2C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666825368.6054.12734421515840291002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bb00c14fcaeda1c72c9dbcc3f146019cfb572d82f55937083550084bf2deb7
Date: Mon, 20 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776668253
