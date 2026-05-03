Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0F529B78B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777820854; cv=none; b=JNt1fzWEjUPz35TPxZbpDB6CF5uXLRyr/3IPxeKHMa8VKgsGTJBRBkAjRouzw5M1j/aG3QHlSUmO3OiYlMPif4UeVb6ilYrUHLy14DVoCG3WHpMp5BTts/lA4jbCzvAbQY4TdI06aG6U++lNbPrD9T43WHRyLay/AK8/wQ4o+PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777820854; c=relaxed/simple;
	bh=jLEXeWDOJNIcrEvtR+ge2uR1Wigu7kLd6D9EjzosYmM=;
	h=To:Subject:From:Message-Id:Date; b=ZxDFq4CzOBPFT2LJPkG3ITTgqhqVsj00YJNFhS1pYznBoCPxKeIpXoBf5ZC+PKxGpbn3kQIR3GCCgibNIulF+VOBUp+r2Dyq+nPOt0dSGL45wiNtEiu2JjFYn/hG7+vVn7HtDVyzcowbnaqvpuQlcYmUII2uDg+TgfVjyfJ+SRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6K8OZVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6K8OZVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C036EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777820853;
	bh=jLEXeWDOJNIcrEvtR+ge2uR1Wigu7kLd6D9EjzosYmM=;
	h=To:Subject:From:Date:From;
	b=A6K8OZVliX4qDGyIEx+hjOb3L6YqlqvErCXCFEBFKvXQSuiS3lPN61p1rvZFk5Ijd
	 jBlUmOhMFP+e4Lisqr/H1XZp3JZwM+v1a8SwLrICtczhKvKaE9KnQkjBlE0YqE6w41
	 1FOrL3Yk9JNoDPjYvk5/Ex7ZFIdAUznhIhe4XiWwzpibfP5+h9fHKHQZSgPBg/KIWJ
	 rb5ZJnq0AoLvhuFqDYih4ywqJBkIiLHhuTVRvjandVo5yGI6hSt7KcJQK477wEaAnA
	 NKN3dUDFSHzoZXHWJBp/2Aeructw9pL8gpi42/WU8SuHUHYNeykZvVSM2Gy9rxs4a8
	 BAK/QaOLLjyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B3CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782085368.15447.14614018170473363111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c4504a81f966eb980555e44113ce096b68d137bd2d97509279af95058348bd
Date: Sun, 03 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777820853
