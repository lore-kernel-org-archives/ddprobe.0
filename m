Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EBB1E492
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729832754; cv=none; b=I/NpvHVnxcdQbAA5aOVyT3Y1JdVRaLvlnCXPaDjCPf7RIukHUo7gltn6T8n7WDSE1dFWyjEuDcez7YFc5RqKYq1uu4DNWKDTC1vfuf8ihW9c5sEUGWaFucFgmBcyN5vul2DddyvHGDkReA7QtzuTjYeaISy3GLEEsdYPC+nlv9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729832754; c=relaxed/simple;
	bh=H6awJYjj+XL6mxBbwflKjWyfykPCY4ZLxO/Tah+aPjM=;
	h=To:Subject:From:Message-Id:Date; b=pvxIWxBLrJeup3Yux5ajSvrPYr97ZhDdRBdXOmhxe8VCQQLq1VrttXT8T6/z3tCKV57X22RgkLxadhvTW2fkXdHtoFAa1RHzvmGPNXX2ycbudbu3ElngZ/8RIG/AnF4b7gPZuFrQmA8wl5p2L7FBqpq/B74Lj3zQlpHl/bMPQ2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVW2b8/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVW2b8/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B4EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729832753;
	bh=H6awJYjj+XL6mxBbwflKjWyfykPCY4ZLxO/Tah+aPjM=;
	h=To:Subject:From:Date:From;
	b=BVW2b8/rYwipuuu+CJAp5uw+oXLbpKHDdlaOLau7Z4Zf6uv8lzmCscxwmwLoJgnpE
	 XDbug95RZiAsZFxj5zMKXOzlWHTerOr/n44IqPgpk7P6lNf8X6DPXVhIugiAri+02u
	 Czka7Ajzj3Cx9AnfLW1fMZ7ORlT/LTcbJ36mJa7tJoOpSH+h3n/YDIQRsjE4st4TmG
	 suRFhYzS1hibILQ392AaS9PzT5b9gzIFsffItXMoEDwH9YhPIXcIvkMiqjovBxaNjv
	 EV9aeQXyTNW9BC6daA58iBLvtLW6QofGCkoB1SNx9gIZ+75gfhZFF/5h7/sn2JlESj
	 2hXZOPud0YdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CA8D116EC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172983275362.2128.4957580622532941677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165eccc44add34d79dd0c58f548f67ef20bc4489090e250ff43738a91335e38a
Date: Fri, 25 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729832753
