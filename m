Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490EB178CF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742023134; cv=none; b=oiDxi7e91wUO0R7Qa3KCBIiFaiDMJVHJvxYSPDbZOBoPUuJcY/zuNBa0g3t24u9iSg1GgXtq0/fMFWyxEg4Q99jDV009WkU7Ev8ZbU4R3KGmYZiYA19MWI63FKBWq4+kvazO6HG94agiPlWEBMBkYjRuGV6Cb8BpQLv6T/PBjN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742023134; c=relaxed/simple;
	bh=6KHRxCiCXYp/j4GkNcy9TJg724C8v/ucxRkTo7+mDZQ=;
	h=To:Subject:From:Message-Id:Date; b=UrP1sblbx3jDK8mibr5eEQYaU1gDh8sHeYdxdrmNT08nK48Hg3Qa8VXY/bEK9Ufu67N/K26IE2uQXKhDHYtgtZw/yxVBQnkxwhyNPcIVH9O7lqQPtGxTzyJRiVTNctn1YAcpn2NNMfZnO9yIFEKvzevyYJx9JjhIeXAhdQIXRfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kibvTiER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kibvTiER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C12C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742023133;
	bh=6KHRxCiCXYp/j4GkNcy9TJg724C8v/ucxRkTo7+mDZQ=;
	h=To:Subject:From:Date:From;
	b=kibvTiERkUaxd0skes8Ylkp6hJKcb5OhF57Ty8PG/9jv8dNGWkMp2YpAROFgVgInk
	 nHcLMQa0LfvG2OvPzAwsdg7kAQrBXWofmu3j03Y+gTaIM7CXKBfCOBKZmKPrhePi0z
	 sV5LWr2B+z1L7aKmr6uLP9JHAUMhIkK8PJWSWWlr1t1rx9sOJVhvRmAalVC2dgCZmF
	 +yMvEhWqThXD9lp3p07pi9QAbb2VgI2w6HTA0Xs5ThbFlagMdVGXEA7+D4NcSjY2GY
	 xsCqb25kqoYADXuhFkUnLO756FAoc44tBiOyZlctdHjq0eYjMFK9s2Ev/boUELfeq8
	 YooeqDNYgDmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98253C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202313361.10471.9342272679358311194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c8675455ca34a26768ce8246fdf61a714b4da74bb84cdea65ba9ab77ef6476
Date: Sat, 15 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742023133
