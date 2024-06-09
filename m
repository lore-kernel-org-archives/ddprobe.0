Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0AA1EA73
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717951043; cv=none; b=di8Pn1XVouYQnnDJrqgoL7/Eo5aXP14Ep7X3D+4JLyDeCJ490O0CpH8HAl04851h/ekIEhXd/bKIhYi8UAYEXZEclmuT/YUy9A+7CW7OzmPRdJZM0olgXUDXhhjEq+Fm6BP1UF0YLSKiSzY9GgkhtqIuv+BGU68yxUrL1uVkbrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717951043; c=relaxed/simple;
	bh=INsyqNqZqNla8J4BS3j50dU+1DPH2JtgLnJM6RFyPVs=;
	h=To:Subject:From:Message-Id:Date; b=IFZqULTn6bSDO5O/H6BTPh+RdFIkJN5dTtkJw8HG4UQ2HPCeTgIvN81cQm7v60vyYh1gQ7p9NcLU+r8Yp8/yhWrY674f6oM4eU73o0fk0qfrYCBdTQtTwFDTqBnRziP2BPL4oWRUv5Y5DC38NKbrTveMtW7pAdgqF64OXMKuex0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUYI+9DI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUYI+9DI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6215C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717951042;
	bh=INsyqNqZqNla8J4BS3j50dU+1DPH2JtgLnJM6RFyPVs=;
	h=To:Subject:From:Date:From;
	b=BUYI+9DIMDEhcbKShWiEGZz1OP1Bkk2MIZ755fApzRtVfFPWGfM0u7R0etTxdYWpi
	 N8kyIm3Jujl9Ux0WlRswY+cXfcJO6VWtEnS/jcMRujFZ85uasiOklL1GUSWGDO3Rga
	 K5w+DMeUv6ZUH9AEH5PhcmrvxIkMVWfCmM0RfemGBAMuXoiyDzmpCskpj5SafRcN68
	 XXFH3qlsRcnfcGVj0U5HoMbCHrSEs/GHnronAl5W8fVYWGD2UhTroC/O1szYADAz3M
	 GXjaJb79IJdKBzI95wLcAZFLhvCawI7aXYBEuc5WZvvh9DuRbSmnPXEWjYaIxDBgC/
	 n7IejP15X9jVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DDCC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795104278.17065.782571854894708103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec51afa958479ee99d8ddbf573ea08e0ac1d587d788c33b49547bce94a097e65
Date: Sun, 09 Jun 2024 16:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717951042
