Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3A91A9F9F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766842434; cv=none; b=dGkPLYJWrVamGhqsVF8NbRjNZxYgBIr7xRH/HziHfeaePIBx1KYnuYrnc2lGoHHvthpye7VApVj3vp/wE0rBslD3EMS/lg5bHCwBw/909nmeLYriqwinki5RJCQufY2yCR/0sFWnipwFGDsLQodxbqvabzFslWi/QI1wsDXmxLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766842434; c=relaxed/simple;
	bh=saYFJoq03+ZTyQSKD8RGBR6bfPdsOvJLBycO9C7bO8I=;
	h=To:Subject:From:Message-Id:Date; b=IeODDUIcaOpoEOhTbJZtwb33j5OlKjbsXj3lM0Dyr7hVZ0+49om5MF4M0SaAsd+HbBeV93NAf6K3vC7/PuvBKFtTtAdH1VI5taPi7dkd7dw6crZnGTYYWqHrD+aEmLwHnMehmYUl3DvWi5+dc5RzxuuntNVVNitG8q8K9eqtuII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5mwgmY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5mwgmY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36FFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766842433;
	bh=saYFJoq03+ZTyQSKD8RGBR6bfPdsOvJLBycO9C7bO8I=;
	h=To:Subject:From:Date:From;
	b=I5mwgmY66C1BHsjR/Ld/oopXUxsxib1b5UQdiRu7X5Ecbn+G6QKWn19j397CPLzjP
	 jl1jGPb25ifgSfOwqE6GLuMtvsKGWjd6nHA+m1quzFblgFrSnaBZX4jjWLVQ9/97wl
	 wUVJD4HOnvRAfZYDcuka3lrk+KHsIbBlbCa0RZLEPPkVZ7Rvb3jZ0rWZrOssyGqCDv
	 /wYX+Ae8lobibIL10AaAunF8BGEdwQkVwiAK8jCXXJMHr8JwKEiXKv0ZzN4wARPJ9Z
	 ZGvCMN81iCyVBnNrYDfipJPvtX+rR+hP91fM//a8ldduLVp7z0wyMs4nn6elQESb+w
	 C4dTF+4c1sz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC00E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684243360.31717.17917205264103822401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e771499fe7eb92f815e48ea98d12c0fd8e3cd225dfb6e9176d38292134ccaf48
Date: Sat, 27 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766842433
