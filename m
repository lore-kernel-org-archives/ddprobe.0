Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D882F546D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764973374; cv=none; b=vCcwEJV1cbyngy1vyMJVn013u/BrPK2lnFj1tOAbiEwiU/qPOIVqHFTuYi0eZojZALQMwpAwo+3rbJOXBBpMLt5kRodIRpSwPDk1zl9pZGm84au9h20gE1Yqaby0XBTAxTVXv9ek2EWlQbg+EBPOQaKDfaZiZX+aLDWkpbUfF1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764973374; c=relaxed/simple;
	bh=tHxLqwEKq1kqRtzAa3YGr3/nHRRle18ZjMF6/uoQDSM=;
	h=To:Subject:From:Message-Id:Date; b=CM2C7zHOXjnBD7ojm2eT3qOxIKVvfMcb3jHNb2xhGpOf+eQVgXGqoEFYkyyejYiwQykK4fPxZlo/9gWNby9yIlCw7sM9WsRpzP8nQcAtbBXZawkYt/IzqBHjt9MedNSeATcGEBolwFmfgWh3k6i/T2vgS3alZJIFIvr3IswJDOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBMYIyWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBMYIyWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD89CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764973373;
	bh=tHxLqwEKq1kqRtzAa3YGr3/nHRRle18ZjMF6/uoQDSM=;
	h=To:Subject:From:Date:From;
	b=SBMYIyWpCzBDqRJzjm5cNptrUT9PkilJrSAvDcBvPIUdvWsy6IKqTqcL0IRhmXrNv
	 aWaf8tPexYzyg5UtUy3ES/dkQCXvXUwNQwZycgxePwczLrMfBa6So2zOYyO+744Xm0
	 +Mdh4OvgbbbV21LN+Tdy9FLRslVSqKzi3BWiayPns2gGS2HBSciifOJCHGsE/9SHEb
	 VriUedCXf8TOVsBaJl3N3tc28H3yFKDA0/I55YzSPBrAbpa/Yuy/ASrw2mNI/97GRJ
	 0GHecyQiW8Gem8lFV4AxfkVz21dxJ4KoQcvbN4e7vKT6qnH4xPnAaFNqKIEKmPgif9
	 nAAwCtz/W1F4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F71D374B6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497337361.29358.15346361769002331303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44d4193610d7e35f75525e8521b0abce77772256ff98c3f59530549671bdaaa
Date: Fri, 05 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764973373
