Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ED929B8DD
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760329794; cv=none; b=OVEE5Oq4ouqrQuopN/ZCdAgNaN6LheduV6cRsZ5i6mqp3QxS2S6nF9VMuoachEphcxR47KJ8FsbXHV6QoGwzLScbEq3rbDwaRIDzklpGiYdQNDiXKhN5HxJQ36w8823Bo7eaULhP9z0awkYYAbZXk/BJjIRuZggpL9lvmfYBPWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760329794; c=relaxed/simple;
	bh=jBBuWQpnGLlYUgkYqh/7wI737HwfvXcsFdpFI9847+w=;
	h=To:Subject:From:Message-Id:Date; b=PE1fAnsHSoWpP9tklMAGVELrYuGDAywgdb63czpxxamQdt9zJNdu2T47fP/+G8Nh9C6S+JpYbR1ew+vSYBUU7N2mXIRJAqyud01XATa9PlFN/SjW/5Olc+ukvpNq5iAFz8EQ+QkdszbEStrPgC6ZFSaudgbyw7fMtF+uX5l+RKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe28Jjv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe28Jjv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760329793;
	bh=jBBuWQpnGLlYUgkYqh/7wI737HwfvXcsFdpFI9847+w=;
	h=To:Subject:From:Date:From;
	b=Qe28Jjv8ESE6pR11KLzNNFscvOV37FKinmk5MGVGOLRRCXL4DcAX9bZ+1CG8SnHLa
	 bhL+A5akDJ91F/LDIJYZpoKRccrySKBUSt6IPmF2JlmzqcdZb+HbJXTUIR4H1W/uRK
	 RgocxeEN7UvMLZ1bI7iyc3Ey6oXsFNkFNI7WBQAGdwICZtM+Q2U1o3Q7AmVCdVbZ6W
	 4ORb6Z0EUN0YZ79inKGBVE+XzcVvqy23hJ9J6ZF8RsrJq9hGz/+npO1bRVt9C+kkQ3
	 UHeOEaBMrJIDTJOg9ksdZN0tTEQURhmMTQzxYu/nzXWJBELtxPbBg5f5CrsryXzejQ
	 uOofiL5WYc/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3AECCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032979357.18769.2172454146568547797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816a34ab4b61b4c17b779eaa44286af95959c493e61fb2453cfdf22fce09df62
Date: Mon, 13 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760329793
