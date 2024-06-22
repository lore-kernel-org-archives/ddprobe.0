Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568931755B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719078743; cv=none; b=Gl54EteYbgM6HYU7MLpjnLNOH0uWBoabO7+HLmGXGJt1/k8K8F78e3YdLk/kIoIcUlvVLMhNWbOEwJGuaNZTLH1+er5B7nMaeuL6anLY+XLNkfRM2SMwtfDomRoEVMpJK1ZVtNDg0ibIBHRBcqs1FBLMMAl136DwbpoQVQTlGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719078743; c=relaxed/simple;
	bh=CcD0j+FaZXBFkBPnkYNuV/L4fEZ6Lk4YBJ5hSJs18N4=;
	h=To:Subject:From:Message-Id:Date; b=IaD9TRgPIfUEroDJv144nAaVRfuMzKudJ6Jv3Sz8Wnsn0nyidgO3RPXJzByFAhIRU2ZWf9omrbujtbe3XMFkCFfYTv0knBg5PL8T499IyTWcLOYFR7Ge3NluhAN2Fy4Euj2W1QozztI7v86E8pFiAzuOklBXlDgh+aSIeWBvhig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOD7PZhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOD7PZhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2F1C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719078742;
	bh=CcD0j+FaZXBFkBPnkYNuV/L4fEZ6Lk4YBJ5hSJs18N4=;
	h=To:Subject:From:Date:From;
	b=gOD7PZhKDy+DCsKvttg3U8LvkxNVGcA2imJ+CKkD0xbv4g/66p9NJcrqW3mhfS90V
	 iKAbaqALZWEXoEW1cm9ccplfXGzZDuXn94qocSw7JmYVnFfAhIdRenf5D5ZFcj6ES8
	 7EyQUj2Z4QbKejKJO1yiS3CBDk1Pa7lFdKSqKAEDxGk0tOhqFZHe1Avgrc5ndp+Jsp
	 de/Wd574eNNRSNQ6m8jxnJjrfODqd5b6X9i0kYhdY3A+AeP6o1sql1yoCyUCNaL7fz
	 xCp7GTXYgvSeOWRunGzI+MfYkZmf5wH46ZjbNFHoOlJqfgoBvJBdFSWsxd5LJsmOiV
	 HIjA5VEA/DypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8EFC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907874278.25541.11355473374343839338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b002e0a198ac3355ba72a414ffba32fb1875b595f942bb1ef5ee89bc2b541d40
Date: Sat, 22 Jun 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719078742
