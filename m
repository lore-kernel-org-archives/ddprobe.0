Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A405184
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774216494; cv=none; b=T+I6jsj/56vQaKolSNFu+u7i3wH9TThS4xKJmfHyyVUbv+9kAbms+7IgkjnGeUa1VRcC7IdnJkjGZaxte0bHLt2J3XJgT775tz5pHXT2bqjsOryn/Ea0LfRMvdKUBE/E5OUrhxbjk2t5n0qPdJjI+ZfwfZbfVcbG2pH93A+ZWIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774216494; c=relaxed/simple;
	bh=GSJmimJ5/aXzmglxvuJNsJSGJNTwH6E3Dp+z7m+FVwY=;
	h=To:Subject:From:Message-Id:Date; b=HnjkcCSRZ3UKDxnDYFQnFY8iC3XYhKrHQ3dPkGDp9UkPmCwEi1c/+qbDj22n8uhllqkzd4RC8iyw28EfQzh3aNCTVa2Xq1vYQ0ljb8cob07rv6WzKXRFL6YXxwqeRmPoI0dHt9sK3Ojot6cpNt6imXHWjpXzfY0c4t5Y/JVwcHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpUhToAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpUhToAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4834C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774216493;
	bh=GSJmimJ5/aXzmglxvuJNsJSGJNTwH6E3Dp+z7m+FVwY=;
	h=To:Subject:From:Date:From;
	b=JpUhToAGTdhzlGJkr2wSeT7o/vZUWljDDLPAWCOJDer0889/E/jWpnaejyHwiLksi
	 drw1fXiMOq0b4Q5ScMrjfPheXAZEYu7+cKKw3HlR/BirH5NXIMgkoBMi61Mx47Zu7i
	 8lZ3FKx/N0gCQDFPVroFn+0rY4RxI3WkPrgEGhaKisnzutc8vEzYTBF41ta43OqTBh
	 WZCJj5wJPB5F7DSSzalUXwGfs83UGgsiChZPmjAprUklD2N0dmPmY3xI6huWATmluR
	 be1xCPTgQcqa+oU5VWws/aWX5+gX7bFYtAEI9rLnY5bc7qiaxkO3QDjHFzZZBUYG/2
	 PPm3xkotKlcpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC81D58CAA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421649358.520.817428754458768637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6490a97d538fbb5f666915be04a01fe3c7021ddb0269b30036cb8a2d26843011
Date: Sun, 22 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774216493
