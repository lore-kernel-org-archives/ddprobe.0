Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F48120E33E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729290354; cv=none; b=QrSUa1sfqufxC1ANacXimApMiH6KA4eWmq4x5Ql+ISDcBHfL+F0VBMklc9n2ApGcon6bpFqPcsN8AbQi6OafnxJrUGLG/f+5ETND7yhnAEa9uVQ4ENi7Ft+3vGp8Q95gDKGdQ7iswRt+2iPYs7uJgvsiKmKj72nGOsJOWxAM2xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729290354; c=relaxed/simple;
	bh=gHiHi6F7JTY9j8T7+LVYtrPrzI4Ijk/+/SOf628HbuI=;
	h=To:Subject:From:Message-Id:Date; b=Sf0WywSgPYAfNDBCoHzE2MQ+tDMa2Js40h1c7aH8s+b6iLlHvAnjzaww4xeDtIkjvhThSNPpV1NCeOVj2XdqgT3NZXGfZLPX5ssxHFMJ/+qF42DkoP15oDlPRq5ZaXLtqevjy6TH3k+/v7ZpHRNuEpxKDWuOw7mremdfdYLY8t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2gWZY96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2gWZY96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A595FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729290353;
	bh=gHiHi6F7JTY9j8T7+LVYtrPrzI4Ijk/+/SOf628HbuI=;
	h=To:Subject:From:Date:From;
	b=L2gWZY96ySL+gsnlnI9r9gmCRwHmRhollV+r4B+MjuFmD5FScjHTQNxaUgU6ua7JH
	 mffqtDGyA6dTPxCBxAF2MOlD61K1C3VxYR95XCZxFuHprUc4PFicDLPIoqGLWUN1Od
	 tw87hqA57mdqX9KWE6q8Ry8J8vEMn1nXdsmfp2PAhbp+vwTs4JTyK6DHcajW9qEqIb
	 zpL2TmIjrVONoUVPd5EOhOhizuXcjLopLHVynIrwqqQJiFh5IsSMAsEQN3WUxzDiKm
	 usyB5DkJ6Yc4ICZP/hT9pHS+V85XVkjmvfOZJD4cNiFeICmnaxMPbr/KFNEHURUjDE
	 Cy373MsH7vfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D78D3F2BF
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929035358.29860.18269707476423429677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20f9c83c60907a118bfe77d6c6d72d86ae7f33238fa5d81343ad5bccacbeea7
Date: Fri, 18 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729290353
