Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D68F4A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771646694; cv=none; b=WfmhbQXUzNsKl99XFGfGoqFuzo6dpZy43TVc2tgItTkKmJyZPBWjr3FsB6H/Tjc+KOtC4ozxgm5Iwh6cbrUREUc3mx2T3tvXIQRO+uHKfxQP1HI9uSCXL1gyLwBdCZSdzksZD4ciCJECHRhhhc04J0BhRd5jwgi/hJg0thsaN5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771646694; c=relaxed/simple;
	bh=eroX9N2V1oDU1jISFRPec15JUxYB9z1UUYoEBNDInjs=;
	h=To:Subject:From:Message-Id:Date; b=cZqTnLQ6ReQGR3AAIRP8pa0+3VkM8z0ta8re29tZpKhiuCk7ND1dcl1Vn17uyYGUyrUm/I5sVk/VE9OHWqytt1mjcnov/7eDfZEd9kD8JUrjx5GMl4ZgnD4ddCLHt52f/QdvGulKDcfFWIFDkcCXJqrU7vg2s4SF+BrpLUBWfHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYIX2HEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYIX2HEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF184C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771646693;
	bh=eroX9N2V1oDU1jISFRPec15JUxYB9z1UUYoEBNDInjs=;
	h=To:Subject:From:Date:From;
	b=NYIX2HEhvErHELkBzuHFIN+bHgYNWrGhLzm9FBU6+e/v5qgkxlJUzNxrshc+iuAUB
	 /IMNLLaf/aMalCaw2IGBwbs+oDPt3oaswjuw6m9GHCEkFvzXcb6Gv4mYtrSH+PdhX5
	 KItrlLwcj6xL5HbfJlgGdMDHOAarYL9kKPK19NUnd34aMKvalcpgaDq07KHAVmqf6Z
	 eWJv+NIfw3x5x6zAIvghR/sonK4rnPLi05Q1Ikpu+5l0TuaPMMiIFcoeYizqQr4b4+
	 cS57L6sEBuYUkNNLCvqFWrJRVGskFUb8PsQyDCJOTRPVrzQ+eYVph/VmfDR8CpWN/+
	 LrnTknu+xSkGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F7DE9A049
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164669358.29049.13517106953248390315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac2d96014ae484b064954462c3a3424a8c55b404d03533fe5dbe99d6d740928
Date: Sat, 21 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771646693
