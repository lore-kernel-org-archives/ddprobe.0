Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6D6AD48
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717265123; cv=none; b=qR/T5IsXGLzs8g1qhdri6ktL8lGpB6gjNXvyF+5IEjS1nD8kUaOTArDZMyEDBFsiFeX5NgYqxBcn+C6A+leHQVDalgRzZpZ0UGWKIshoYWZmilBNSLweluAKJLioHRgt5KTnxyON3TOfi+od5RFqpwKxUJboEFlc/LDKRJPJS9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717265123; c=relaxed/simple;
	bh=0kWLZARrg68tC3TOwsTWFy7pkhcrp3mFJTbZl0QDsgE=;
	h=To:Subject:From:Message-Id:Date; b=OOm5O92FtlFSxmfkTRx5UwNfrZNcGoXxRioeUgeuL7WD1R4uotl3ax7W/gsX46rKtZA4lkXk+5wQN5aePC5jFAM3+bTW+zff+E/F9WihXAhpuaEkCnmJl8caxrClHzfyldIS08lmfjoAcPQu4cV6AJzSRATJPLRcvKHe0dSU948=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8Zk5KnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8Zk5KnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB01C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717265122;
	bh=0kWLZARrg68tC3TOwsTWFy7pkhcrp3mFJTbZl0QDsgE=;
	h=To:Subject:From:Date:From;
	b=J8Zk5KnW+BXFyUmx+f4ZFx+4f5jDobDOArtDTFP8sj2gleq9h8xJgJCPvhC0X/8Ej
	 MM3k4FyRXMQGCuHEEbuHYvkirnG0pGV4SAwbwyg0Jc4d9FaR1lTKBP/djmIzQn65LW
	 L/eJYxsA8phFqYAzB0BzLFF5g8z98F7ChyPZEQN/d10JQ0OMCvQYu0XkCgTO2xP/pk
	 uaAj0kdRG8usBjF4g5uV5WnCkpKqHTPRSR7bio9C3tOB9WfJfiZXewSMDjJNa1NswH
	 BeaGHPI8cxq2tNmuA45sEn9cymG3U4eh4ssoNOt1n8vYCca+TGJeiBagRqsmWCtg/5
	 WOyeM/c4nIPYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B9BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726512276.24492.3653829165228909646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64b03481d03427e9543c765901805043090b6084c95083f5a19b4d621809a8f
Date: Sat, 01 Jun 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717265122
