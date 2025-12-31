Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA7B22CBD9
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767220434; cv=none; b=rrG8F92X0Q10r1eY0q/4TyTBVi+sU1opTuu6pJA54NOUNOE9l0u7GApcDOixn/7Dvhb2I3cQZc9a2DVJwwhfRV4qGk1U+4OzrbTGbl/9AbVQUOJzo9Grrtke8o4nUYt6Uelye043NroRaLg0ehNGdrJCoJsoy3faLmNsHjaeFyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767220434; c=relaxed/simple;
	bh=srFqwi58n6DlDIJ7703MAiH0/u2BMDyVDT6Rk7W3y8Y=;
	h=To:Subject:From:Message-Id:Date; b=qofgyO8CW589JVJWQQk+FRDBt9E4EPKXbWEt8mbg+a7JB6d/TBPDTvDkq7TCQGk1STx4XjqeJVxMjgphKRrG/oJl+su+CY8m44GdUJCuArF+cRiNfw/E/q8d0x/mRuUCf5GeVL/1QfciELiVXgblVOsLsu6g44+JT7DL14gGuXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLYKQp79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLYKQp79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFBEC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767220433;
	bh=srFqwi58n6DlDIJ7703MAiH0/u2BMDyVDT6Rk7W3y8Y=;
	h=To:Subject:From:Date:From;
	b=XLYKQp79G3nUZkYPKUoLGJ4Ke3aLwzEAUy92ZAMxadMuZh7Uk+kOBz0ojTSf7XFgi
	 l6UgNY1AgXdqrsONiwdzOrXPEiNf/JeRdEAtJ44UwGaJUIM9qqEc1KpCMmPBwWzud1
	 oVWtybxIKW/Vr1hd5oOfICIwF0HF5Gs5pKqnAd6G/78ZJi9wBsCwWcvoKCLgs9MRHK
	 E7Q5wH4MDIYTs5pXiqD2+HSqhzpxBPpuv4b4IuE4MimzbSxNDAFW2KOpnrwOMIRE07
	 vlaKcOLZInV6mSXiMx9jcGV2x2m3MbrVkV8SNc3gnx2l+J+eiJ4CkRuwKUU/AMcTNc
	 aRyejP3bE8H4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB7EEB572
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722043357.26185.2148302658732998103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f969507993133dcdbaf2e832f3932661e5052e5fe706e5f46b07c2a0558a6631
Date: Wed, 31 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767220433
