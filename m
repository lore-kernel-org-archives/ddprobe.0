Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE3B1CB32B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727810154; cv=none; b=QWpQoKdDfbn8Yj31b91RhRyUnNlm80Mozz89w+Aw+fohz1oNinXr9rFWafjAl4yG0K21g5gY4pLNqAAncAxEVeeOuvSIFapPNXOcVu/Cbm4nVtXh86i7GbpvDyYmQ+wu4+ahnc4HxhACvTVta33sdSFW1Msa4UtYQ34mFMiMi/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727810154; c=relaxed/simple;
	bh=mzpgxv470MsGWMwKZMJ9V6UgDeSo8uC78Yy7egMCMi8=;
	h=To:Subject:From:Message-Id:Date; b=FxbLv0QWIipe7BwvhJkXR6BctMib/kLB2cLyFxFa6YmtU4oobXkuCu+IxXBBkbU6eS9gGS9UY+pkL4F/jr2BmjDgBqXWGixSI0toRf9eYraNe7S6oGTALPUoRAmSx8YpMaQxbNe6hC6He+5sE/J/uv3VRYxMX+ePR/2Gr7t28kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKrMSuYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKrMSuYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D184C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727810154;
	bh=mzpgxv470MsGWMwKZMJ9V6UgDeSo8uC78Yy7egMCMi8=;
	h=To:Subject:From:Date:From;
	b=JKrMSuYaF3SeJfoPQbD6E/wdiiLGCh4TX9+A9gVRWIOkmVfMXXor7UHw9QL2mqL5i
	 hhcwsJZyYgSAhFfr0jf4NnllDcaaiChKR4wpQXbqdx31GkfofW66UDWnwykxBkasJD
	 y6/M3/FQMNmRLT8f59JREBHeUqwT7madr+wE9pfOK5Vd86+uyZuccN+THaTr1SOZV6
	 lQS3/UzmHGyuoZJaRHia3NiAJyNZ93L3/huITs42n7hzIIxqdrUUq82pTrICAU9Lkk
	 Z5qisKdLSMb9/zwRbXwn1iG5eWCh5K++V3HJAxmxsnf1sOaaUWa8/EAu9pqSPYn9Fk
	 Q2McMJJtlEixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28CACEACFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781015382.23325.16751811491464267975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eaeac26565908c02da229eb975e16a6307714efe844b54e305ec5875f896ecd
Date: Tue, 01 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727810153
