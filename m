Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4051F21B9D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766122434; cv=none; b=O/jFxpUlwmPWtMtPOZM2iZvVCBICDW2QFDsy2YRTq/Oy7teleUvWtjfCxRg/NCd+9yzhhhx+ySDqmiNGx4yTwcZVr3oD7mrKqYRQwTKJNODaBOTHapqO+OygHnSAHcEXiPonCh+/s0hgNFtLtwWGBwWjoVTx64xqg71EpVk45Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766122434; c=relaxed/simple;
	bh=NZAJdCuJizy2WGEre0SeB+kEyFBrzVVXRYUHu1ti+yo=;
	h=To:Subject:From:Message-Id:Date; b=GXL//4NTqsSsOQ5Nsl6+dTDNChCvYvtzmaziBk3Hdxy4nKm3PB0m2l+2SpXxDTiB/Fu/TmndiXI6o+g8wn5D0NjgarDA6OHFSf+7Z5O+f9rqRcopVS9NmR3YHa68mKPuDYz0QihUa/57H5DuLzq0C/Lm5y/ourgzsMcEN3/o8mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW0em4tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW0em4tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0B0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766122433;
	bh=NZAJdCuJizy2WGEre0SeB+kEyFBrzVVXRYUHu1ti+yo=;
	h=To:Subject:From:Date:From;
	b=OW0em4tOkkrWdc4dLz/onNv6ePTijPiWLpsUMxsqAlK7xT1/jm6nSGl4F9NDRly2r
	 DRJjedJ7UXOt8dK4pIawcO9+AD2UrxobUMm9XpRkijYPjZAtbJ0GJl8xtusfRZ9lLV
	 XSHzJhrM46UUjoc/MRfwR+xQBX6TJgNbsJb+mhKaQnb5x74H/VyJjbaynRFHz6V+JC
	 1+WV7Q5Boy4N0X7QIa4PyW0vdx0BkkFT38SHU1IjLDXfKDJiGqGHCRuVEhn5WnkVrZ
	 9oh+T5xDsBhJQ+UCqmT/+Ew8fojXke69k40BRhywVPPxKJDX6+F1CgBykDPw9DuG1t
	 mPhC/OfkW6hkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A613D74956
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612243362.16943.2735778262277455479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb795fb3d7d524048c285d85995639ff8039fce15f86164b106243d48138b555
Date: Fri, 19 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766122433
