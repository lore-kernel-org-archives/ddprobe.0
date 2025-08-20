Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D211D23F417
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755665993; cv=none; b=U3jI1Eokg7LOblg8E7G2fWzwCtYv8e73kE0WSqZ5vRAP13UIYdMZNpnTqS5T0Fw9MbRAQNfyGPuWFVCIQ5JFWLIAiYZ2pxgTBQM+OZche1aH3vdZMqxKaduiVMN4WFzfINLez3Ta13jDVwP10o38LFcmdWXQhdhgbiu0L8ZblU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755665993; c=relaxed/simple;
	bh=mHefDlXz3FPMuI6OAV/RuYAQlmAtlRNm04ChEegg4Ew=;
	h=To:Subject:From:Message-Id:Date; b=N/RvVPmuf7O9FS73na3ltsXjAz05rAlrlnNbxrJG8y6YNN01HeRBNEP8Qd49s9Y0ba7luVZBBO3oCdlDnaqFiLvB0qQ3FGsc80Y3jWHjL/Wx5XXl7bJqdxW8cXn4PilLEKcc+rJBH6DNsbH/WayJM53oV6tFXRNQblGxNxjfBPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN3svkiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN3svkiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD42C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755665993;
	bh=mHefDlXz3FPMuI6OAV/RuYAQlmAtlRNm04ChEegg4Ew=;
	h=To:Subject:From:Date:From;
	b=WN3svkiHpRPcsOywfMQ+RJ5UTfKT5z6EZm8GqMRlf3yB0+M2F8MxRIfGPD7s7rzZe
	 1MBtgIDYjf5OetYEiIJ6WHunh+Zl0sS6hUYPzywhJmYAJU3KtzKSjay7MU2/dLG5u9
	 WyarH0+zyYoD/P1dHlfE15koMW+nNqZpMAw8OanZ3PcMblcRo2Z3XWVKI40vfgnbyr
	 0vQ+jhXWJ88AFZyGOxyspsseN5xPU5xOKR3PNhgKyGRcpAoYnSOnR/jnGbPNblkOJs
	 1NNkkaNMojr38hfYsosZ4DUX0h9Ntr4kKfsRBr6uIg+NoapQr0tdxsUGeoj9i2xLtR
	 AmrXIUzXMt6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF82CA0EF5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566599357.11506.10351252095416194618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8718bf8e29dd89b930e839b80edaedfc020c11ee4c4ff9d18c68161a2079a6
Date: Wed, 20 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755665993
