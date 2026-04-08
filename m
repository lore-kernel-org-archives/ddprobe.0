Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0235B658
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775667334; cv=none; b=Qfxqn4WHktaSrWLZSGr7Iwpm5VkCqDajBePYCkYBobLxErK0sz1jetUjHyTm7Ds+KPHGPWCcCuy3Wea/rI7KjU2h0BH2DjlsudarNAhrSxMpWN7LtSoxeiyBbtGgED5AlkjUMnxMdLMFaoLL2OSNR3P4uUWafluIwl9N3q7UlpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775667334; c=relaxed/simple;
	bh=Sxnu1bKDTymAU9dQC5qcdh/+pO/3Vx0Hbw6p/mkxGoU=;
	h=To:Subject:From:Message-Id:Date; b=qUy/Jb+hMfAWkBXe2w9TCqOXbOo1ZzGVc2erSc2MhlPSx+8h/ZsWj2Ybpcqs5IL3qSGpBcsA+E/yOE4COF76U64ipxTI32NGxIyt+aYHiUbIcTPwZre+4XhFEOoF029/hb87j36fzW0B40VkCeojXMasAKYZU6gFjmaoqGIeTHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/Kc56tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/Kc56tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B339CC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775667333;
	bh=Sxnu1bKDTymAU9dQC5qcdh/+pO/3Vx0Hbw6p/mkxGoU=;
	h=To:Subject:From:Date:From;
	b=t/Kc56tlRWM23AN8pdwBjel4RfttsAUF0dUxUfaeWPMcDgfb/UqQl3FjqxKxsGnCe
	 89TrlZ0He9XLa39Fz+UkrHVsz58DKSsn98C2x63XlSRlcBhzg9oavAmUmyHxFHTGib
	 flqtmP8jiVmMl7nGapfW/1S+rEIxyfXehyHdRzkAo4QWBk5kRIIkTcY5gYLuFwwmkd
	 xomEEr3LBJYJpbCTcgj+ieA4akIWXthXH0lRA9aYcz61Ux7LmVXNxvu80PtI50szYm
	 OFIQ2K0e6wjAqKFFh+fXk6VgBcuNsI6aqHoBUyrVVm5I56eJBJ2w6+6zPe7tuKC6iG
	 apjObc0fhN1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E110F995C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566733369.9087.15487685360793129161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94063763f4439376b4dfbcfdf8e2feea6f267d2638efe8a6153110848165b735
Date: Wed, 08 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775667333
