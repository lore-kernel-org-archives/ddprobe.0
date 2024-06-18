Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB3139AEC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718742563; cv=none; b=pKa6D5NYiNz6l9/XhaF/shwdHdU6DR/q34FM3cxUFIIpAja50pMDRtD3psbUJi3c/k6EkoNkk87/Yg9AxurXNASieMBVm71UvaFY6QamZ+dJEn9KpzP+Q8SqMLQuY64nK7HZYZtpkccQk02SaMHD+AFs6b2zmN1o6bzoEouY+JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718742563; c=relaxed/simple;
	bh=Spv7n290jFcsVLSS3binWhDtn7MU5Yrraz7lav3PIbI=;
	h=To:Subject:From:Message-Id:Date; b=nkdtYNs2Y1OQEl/uYBkKiZagCnbZ6Plr/f8shrWzgTFTK2Hj2OrmJnxIPVHTdDOLjtv0zA5oWsLshncMA7nAcFtOdXsNhpRrHnrXYfUKzEb0C9SPIJnLdVbUk21S6XT5FbMvHntcrSV+KI7YUb/EPjI9jLVkEpyBvMLmg3CRlis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7xgQ7g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7xgQ7g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54B7C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718742562;
	bh=Spv7n290jFcsVLSS3binWhDtn7MU5Yrraz7lav3PIbI=;
	h=To:Subject:From:Date:From;
	b=O7xgQ7g076yyo1qvblaS8nKxfeecAnMaLJoWGjA1NN90MTTL7wJNa6I5K2D/CGpw/
	 +4a84N/+hrS7m5hXmVpcoIhpP9liNM4rBlcrnmK2o5XVtaXB4grTm++5oeQWj2mG8R
	 56uOxMwL1yBmxiBeeQxiA8PWGG2lgbj9AoqLmguxiSwsCsKrIYbYjSO/tNhxOHLHQ2
	 dNyOT1kpESYCKGkooKAAKrk3atMQMxCtCcO56sgMt9k7ybwjNUaBaEqUV9Nk79J+UB
	 hr3NhEaYjxUQICUxQKwzD6vYw4y+sWjKzublzXwV9qhp1NVGNRt+My0gVd+CamGfqV
	 RtGYTwPWUw3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07A5C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874256280.18523.16094541794658831565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bd7cca1220498120c704c99d998d8157fcac048dc229f4ae89b2452a23d709
Date: Tue, 18 Jun 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718742562
