Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EEE334691
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760664594; cv=none; b=h3RlKKtjHX12b+cjk9Z6A7l6DiZFELOb4Fbcz2e+gRunyV7IdLGXZ192E2eCIFk2jrzmoX4kahdiR1d3UqGmU7fBjTg3WyXkzBKm0CEUZz+Na0q4/1QnS3TEQw1ekRvBiW6OVb8hlNmT7TNj2/HRKZEuyT6sxgeEegjlQOOntQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760664594; c=relaxed/simple;
	bh=pXhxXVzQ4yh5W+pTItGrfmEzvr+uYy1/M/o6YWe1SKs=;
	h=To:Subject:From:Message-Id:Date; b=N2Zr3JX9k2JWCylP7+cG04GlXR4YNVIJnzqihctPK3rMctEVHBt81gOGRFL6oJmAYDUzPAVB9xFFoa7kozj5Ylbp1fQrIn3sRKnNnP+gmcCzuv4t7XRjLtpRquN5KxUw7cs6s4XkyVcJZgq+OFKkDdTjb3Fwm7O2TltnU9Q7amw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9nlTDMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9nlTDMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7544C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760664593;
	bh=pXhxXVzQ4yh5W+pTItGrfmEzvr+uYy1/M/o6YWe1SKs=;
	h=To:Subject:From:Date:From;
	b=D9nlTDMIfpaLR9KZt3T4sqNyQ4cryojIFYHZ2HyUiwkEHVAg4WqLes21pK3d+pTId
	 WNqu8FF4HPsm0tu+pYQ1bvYGSPTs2mQOXtKo8xFMP7TbSTuBSz+sHS4rrkDZmfIqmb
	 cntsQoDULRAQD5lFslvg6eNYZbri78t1Ky9gU0eQbMSodIMOwtBv47CZcvaoeFlTz2
	 yRV++MrBNLzhUQb1XWVzYYQjRTxzpXJR6HtG28tcWA8Cu2qKqP18QNph3pJJEbiJfB
	 kOrbjDc0B2iSx+pdvXJ6R7/+hAtvcN+L+cg8hjos7LNYMa1sYhHZB5rnKc9yF/9FcI
	 hd8734KolVtSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9CCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066459357.28922.512575162052182642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cccac1163155837affabd579a040ee844fb53319c73d00c46124bdf1d9648c2
Date: Fri, 17 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760664593
