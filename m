Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AC93EA940
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779204034; cv=none; b=tHdwzpzX9/5vGnua/GoKFB6Kpc9sh1oIvoSY0laJtubT5bAIMlyJi4pU6v3n07iywFAYF0KBYOUN/sayn79o0HePfYtOykBjUaSAhdCtLSUmywQu4Pq2RmkQcgwGOPd6U3aPY4w7rfl/f8Fy4WZ/mnXM1zqs+MNYF2ZrnLPtZ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779204034; c=relaxed/simple;
	bh=wH9E8qGTvbz8PMowrVzV+fxmvIcP3qDfY0ImFnSinQU=;
	h=To:Subject:From:Message-Id:Date; b=i0dlkp5iDGULe1+Qd88iwk7lv+XTr4z8+p9ClrD3ha6nqV6a0QPhKJv/1lAVEBpM2Oc/OvEr7j9D52R7d1nybFI949phyW2doEDil1guYhnK/m5/w9Ii0zItiYhg7IWMWGltg8D5HJ9xu4EDGA37tNP7GhBmq56IBCCC8CcNgic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER58lXuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER58lXuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAD6C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779204033;
	bh=wH9E8qGTvbz8PMowrVzV+fxmvIcP3qDfY0ImFnSinQU=;
	h=To:Subject:From:Date:From;
	b=ER58lXuoCW/F0ZTSoul09QfZzMNdZetxqoRzeqmJURfv+Ik5jFKa7sGc3rihjwVmG
	 U+aU2RWjH353ySAz1xag8t0e2WTI+A0RHzvc/lf9PELi+mWFz7Of48i3Zjkc7UgMP1
	 gCA0pNAVOSPRhv4yBkY0Chh2lB5imeCWSdjmqR+rasos3x9259VbO4Jqntmk4umZrN
	 8l8TYf/Gt9DRSMHrK21ALyPC4w2keJAgFojRf44rLBY+V4ffMWvFSNQBUJtFVd8Yf8
	 2H8YQPq5AF3YLDjPxAp+lhfHU2JO6BZmODzb/ZXohG2FEBoVvbhR2S3NIErnCVcPa2
	 tuj7cr5rDC//w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6ECCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920403369.18817.17442079171218867394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97562aad48032bb780db189eeca37892e4bf815a7c783eac9593d5bd7c6ad13
Date: Tue, 19 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779204033
