Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C25217704
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784397514; cv=none; b=JfVN39JYVT2Kw3FRDOo5v8bDMb5KOG1gdjHAUWLrPDArDTCqmqSf/tJtdeN3aelz0KFKcL+H7yy9BkrVuZ5uJDLZYptGh/gU7kGmlEGSWUrD8MVheYhnLUJRXBvrLG557LEqTNyijlDPiKSNerZQ+LPfI/mBseJAkXzFrFYffvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784397514; c=relaxed/simple;
	bh=7EKSFfn7CJ9i7dQDnGJ1jt8eBC4TlDlAlR02UprC+Sg=;
	h=To:Subject:From:Message-Id:Date; b=eHKRbHuoSQxJbL0AFdf8yvoqYpSTBbMnP4lw4tV3nQzMXBWwNtw4rGNv0suYjPjmKbUeqsLasRmvBfYQtm5PeHdhopUeuUg6XfzPHjmS8SYhEISFQYbzwNh6I31tc1b5ojSGAYlPcPXlOn6bxfLQdMu4RqdCN08tOOHu/9YwAPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2siV5WJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2siV5WJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D476EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784397513;
	bh=7EKSFfn7CJ9i7dQDnGJ1jt8eBC4TlDlAlR02UprC+Sg=;
	h=To:Subject:From:Date:From;
	b=G2siV5WJwznVX+WIz1B4EZ3Mu06SNe+ffXUKP0g6scgxjdocbr0VY98KqhBOgM8AI
	 qXZsUXys+fcacWJ3HcBUILN+yssdBjkyx3Vgb8tC8Vj3HSJNhhkXvznS6FrKzu9zv1
	 Pfk4vDcsTZSXq2MeX3Bc78rEpb8hoMq+miyKc9YITipciyTYx549+ly0KoABMwrvr+
	 Jcs/IEOw8ixJNR1NRN46sazHXGHdmBAZQW7Yf/3nP5N6nM3BlZgcztSUp43g0a6tLQ
	 rcD4sDhxjM0I9TEWpeZrXuD/esbuBLARD/BDgd1L7bmh8/Z+XxLKRBBH01gyWoQRAi
	 CadO7L+JZXemg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2296C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439751369.25713.9148545088923191498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e407b9568590ac9d4a747dd64f992be24256528ead3fc2896651ee9695ea945b
Date: Sat, 18 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784397513
