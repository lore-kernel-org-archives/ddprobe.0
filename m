Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A98381EA5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940914; cv=none; b=PAHVPo41VaR7u7rA4/sE6MhhsmlYOGpfnQh+e0wjeKOocNgPxYtO6xMs1WGgB1InprRHmz+ldgjn3HYVJdZeewBulxZBmwT6Ox79IBmvtctWZZz5eJt6iCM8+OYgx7NAVA0GqIdV91Qm+s3CV8QYQERHg6p7aBZ96f693d/JgvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940914; c=relaxed/simple;
	bh=GwZyenAzj9Pq4dJjAO/FuiXpK1EkJRWMTBRe2tXLyqg=;
	h=To:Subject:From:Message-Id:Date; b=EYkZBqjbRRRwdAJd2BAm58atvTxkyGL4JZBhbD5qfwbRJJ0vRPPbktsSF8UK3tl2PdkMf5b4WK/tUqVJKmwa4a1UKXGGBI2/uXxKJmyRTo7KKv+5mY91sRQVWMAD9cQAARHo5TNH3sFTXVT+VdU1fXp7rscbfEVJsDNEJRZvgC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5CtQ8Re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5CtQ8Re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE02AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783940913;
	bh=GwZyenAzj9Pq4dJjAO/FuiXpK1EkJRWMTBRe2tXLyqg=;
	h=To:Subject:From:Date:From;
	b=V5CtQ8ReBdbRauOyYM4v7gtzP6tHCxg57gG8BFctzv3v8zhpBy+4CiI3GAfKoXqY1
	 Txuqa34MvmZ3rxEcfacasi+l5ZOeR5D/RJQotM1NH8Rm7NBJHurbn99I+9ThIZp80Y
	 yxOFyXGaln4q8UMEw3UUHDldgkQAdwEzMDaTPmvlG8OyFWhoxtXXFhFWmvjSa3NaV1
	 Z/uVUJCq3AvFctOQPlwtoH1SZNKwxi9NhynMWR0Pvsgh9NmJ3dfNncXhYHoCItXRF+
	 c/TGY3j0hd1d0EBOW5ZXuaw6RF2CMtrUlJZnPcB1RVO48ZJ8SF9yMTDSFknoLzglJq
	 njbCXKejktpjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6F8C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394091368.27107.9590161829388224989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062db3537adf1ae85621675705081d697d0f6667c95688cd65a2560cf5897778
Date: Mon, 13 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783940913
