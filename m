Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED35276413
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712648897; cv=none; b=JSvwiwqYzcuEzFUGGMK8CJEN6+Q2Qiz2nSQiSytjuPUv8VaYbMmk8r7215YmB7P7/oMNvPoQqtrOnKxInN3LBsY5QC3OtT/aSXx9mG/GUPGogk7gMQi8JiyiOPiV/L0s3sG6Qh7kujMf8H0Fswyxq4a7JbwPP0eq90v/9I8xisI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712648897; c=relaxed/simple;
	bh=TyMxK2dHJelNaV6UhuIJsRUFo8wHYPBiLPBqtp3RZ2g=;
	h=To:Subject:From:Message-Id:Date; b=dBR0DjoZaleh42iwApnTVgmrdtTVBjJDEq8EfFgQzpPqk3sVOnkKXlEPjsNbOxBIo+/d/coJWF4+GgagyQS37uqGW4dhDs+BF5XKWGH7IDwQ5Sd4R0IkrTJj5OihcZHeWR1Ev8ofb1HmLOH1cWJ4lLcxzyEV/r+KVYdhT/1Uu4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7n7TKpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7n7TKpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D28C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712648896;
	bh=TyMxK2dHJelNaV6UhuIJsRUFo8wHYPBiLPBqtp3RZ2g=;
	h=To:Subject:From:Date:From;
	b=V7n7TKpck/n1G4rLAIuyaRAEwFAVS6/4YPEZceau32zfd0rMUXz8ZrTj5mbM1eanF
	 kECjsFWDWRKRnX5DiW3e3llh+5sh1ipDwEFcITQf0tPHvO+nVmDlqgbmiwsTNbjK3w
	 gNjVCRADzIxTE0ezwjXFfJU7q8tKjHvOd0/zVxkrgeubHj2OXT5x9DkvD/Tn5gnU5U
	 w62Dyugj0mKpPU0wioXX5RiiTJfsfqOsSQmSKmwZJZnbj/wWB6QNIqGHaOCl+kUGOl
	 sf37PfNL6LeWKKYnRPAfO35HMu6HE3pdqNkKGp7mcV4TD+SspavlrEG5K8MOOOmYf9
	 GnxpqYp4vS9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66635CD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264889640.9241.9299459420503450171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09907971e99e200e438dcf420f36f520198385271bd8d7e14c5914eb8b2f635
Date: Tue, 09 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712648896
