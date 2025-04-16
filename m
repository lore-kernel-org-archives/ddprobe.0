Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E27822A1E4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744801794; cv=none; b=oSQOoPuEBD+xUqNBGrPv4IoWRb1j5N51Uz0xEJ0rFXDlnTGgsHa6rBPRzzbPRFYgitZroF6bGPEHms17Qyu9lVlaxuvMxIUB4uDmmUSf/F6Php8UvNCrh7t6jDCFWPg+kAL0Ghgx3Lv9/7RCIqhxVC37BDwa3I5+zyvY5QxmdJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744801794; c=relaxed/simple;
	bh=XVNlQ+T7f9z5yMvuZu+GPh/9re8KTSb76SAc7tHuxd8=;
	h=To:Subject:From:Message-Id:Date; b=h3dSlsz4kijD2hieqEdpKyP/mPotl5pOEdwDQhvHumuu56TqJBKO4q6qJQGYDI2pd7Dti5pAla7KRO4hosQ3TcjG1zQN8pyg0LkwbhrHavFnxCq/Z1Xpa3oibscYXXWSj7/OXdb1uXZg3n3cVa7xStU6DybZFRp3I2zQPz3U2o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPZ+SxmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPZ+SxmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB65BC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744801793;
	bh=XVNlQ+T7f9z5yMvuZu+GPh/9re8KTSb76SAc7tHuxd8=;
	h=To:Subject:From:Date:From;
	b=IPZ+SxmFF4uu6x81qLH8EXU7ZS8HyOy6hCQiggpnFQlmHEwmkn/bLDny9wvHmnyHa
	 Cg/q3wqNKGgnqft5Y3HI+xrS47o5qR45n1qxJMqp+Ln4s4FkH872U3xJM9NeQAzgxN
	 x2Mt1m5pYE1ycSwX98e2kkoE61S28T7lZnQJhk8R0wKhsjGIZf4S/XdjSaND0ZvyRb
	 U6BhQ7BZk1FZ/56MfV1Q60zWu02jXw+utQBtrhKu/gNCE2/+QJAOTxHK2JUeWYI7Fh
	 /NXl5xVdkakWlkxCDe4C+qa3ZzW36OM6+G186mTedYJSG6Huf+0Mor5WI2VPjH1o0v
	 Ma/v2o57PTUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC42C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480179363.6744.17100146347540357140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3317411f0f1295199947a19c14bfa4fc78defa8ff887a1e93339077c3b5bba0f
Date: Wed, 16 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744801793
