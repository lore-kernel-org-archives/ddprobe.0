Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF437F8A5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782752914; cv=none; b=BO52Wf9BZyem7TYo13JOJ9NDFuUS0aSu7oCcr2b312K2Zrod/p0UW/ar1eOYndFfF9XSUWNCem6pNYCW3SqKVqtEUM0nJ2sio6elBjpT3Z5HYcVHGIUu/bEzv24zgs0AmVktTUc6GQu0KaqTsi2mQ3JZpjBcrxnvi71clyRKM+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782752914; c=relaxed/simple;
	bh=aMARSWLDlIWHCkW72rQSIGUG1D31BCTwlKjGxIr4f+c=;
	h=To:Subject:From:Message-Id:Date; b=U4+ThQlptbpB09tNsnEyex2nc68n6XM6K+w5HIiz5PeOnONNaYs7JNqMFqHUa3+oAZ7GZNMhsjhyU0UEp22IoDkSdaMEF30eb8O11tHkC0Da96t8hSVY3IF3Oa4VVWqwMv1MrJ6SritWLAqUEsCb3/EX7ZgWU3pXm4eYuaYrsHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPQUwm1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPQUwm1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C184AC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782752913;
	bh=aMARSWLDlIWHCkW72rQSIGUG1D31BCTwlKjGxIr4f+c=;
	h=To:Subject:From:Date:From;
	b=uPQUwm1ISj4VxEEHgkZm6ZAmI/DOI1QK0dhpfAFGFB9XBWyzxB/tf2TRqNW9qdSY9
	 5frDOA/uO7aMOZ21oiLGdHeS6cTfy2LKninlsbAWAtBL3j9uV1zzdMPDUgvZ55yN2m
	 ZW+hH+xsjYHPJKhcq2D5yce4Ng6MAm4lvzm3t19cdUEpHh7NGmbqX5U7D+MNI85kS4
	 NEH33bM5y3AFEHqHQ20aDoteE/lhwn20aBViEPAt9w0m+fvldW7IWlnnAU9xOPOrmx
	 3WsK/fWVWN2oRn41uX4556Jo6I1HUvss+B9l2LlSaK39D+M8OEPLxUJH9plyMpKA1M
	 L8IjXbiLkJEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA5C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275291368.7800.10766049402348689330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d622f9a11eebdbd6299d0116dde6f8129554502e8b01bdc4ea80bdb17cf8a5bb
Date: Mon, 29 Jun 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782752913
