Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FF530F540
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774428294; cv=none; b=YVN+44goybRH029m5p3OcGddlXKX+ofBLnkpzdXKq8ndSc0Fu1VeXJ8XcPrJupJnWssRHALtwlh+gl64ELRIib2CPhVKpS2rs4oC5SuNLawEYXEKkVgaYeNq14BMUmBfFmxiTnqBTOnFTzPCWq7THho/IrnHchlkZjFj1h6EBu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774428294; c=relaxed/simple;
	bh=Nv+Phu95Uq+ythN20T5OBS8Hwt4UIZFBnZS3fJfH6Fo=;
	h=To:Subject:From:Message-Id:Date; b=bXDRtefbRXwqNF0AoqXQXoRwyyc6BYnHVloIatdBh4q9WdQnIA6bZMWYZU3SG/Rrip9DnvOgjeVUFxWVVIQ2qpxjIQoC5VVomIRQYL39InaArcwfm7erMjYCeaNCqUKSfzwhRaAzhsva7hbgxEBt9WWAb93fcp6IZzjQ1THo4FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0rdofrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0rdofrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B3CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774428293;
	bh=Nv+Phu95Uq+ythN20T5OBS8Hwt4UIZFBnZS3fJfH6Fo=;
	h=To:Subject:From:Date:From;
	b=E0rdofrLgQAEtO401YQSqaOBErtew7ciV38zI5RE+icQLCV7zSNYfEI8Um02bCb0i
	 KhoUx5C5rE5UY7Yvs6LsQafP//QYGEXzVlJvHRl+TVfgjI7rCDY5Ut7LWQfE+mUzTd
	 cDl3tnHVhI1b3jHNVCJiZuHUjYsIlcBD5YuTs+IgliQqNcb3GXiNKba94Cjvr/FPq6
	 JEhKO14MRIqZjkVkLqoGSgbXlbHms85jWEBbJbxNd//iC/nsw1IB/aDrKGzlzLaqKJ
	 F+4VvDGhzEcyuEpBxy9WbJNdfzZarutBFMSZHuUSqgV0/Ljkx1YkC94PClwI/bt9so
	 3Vk32EU5iWLow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95742FEA834
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442829360.10846.10947661593765478900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072b14b2f6af7ba57c2035f2a9544c5cb3a830405b6f0cf3c5e4aeb593952c38
Date: Wed, 25 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774428293
