Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7411A9B58
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772923494; cv=none; b=tKKTvH8n1/RWjXQ6UaRhsdNR/K8il7rTOMYQ0qaQgxAcb8jUzBdDzyM1dVmXlSQY+uBSkD5ubS9ZImZTU+6FNCadw2FrGZMDu+kJ1qSvQe2lW1NPPkWxx+VBiRIdcA1vM6phHZzzVbqUV+E3SpXD21ceRwcjVWUhRt4SDtDfb40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772923494; c=relaxed/simple;
	bh=u7sREqW/Oa4+oC8sDPq4AzqNu1SlGSUvPTn7xzwx8q4=;
	h=To:Subject:From:Message-Id:Date; b=WVmSIHpR+Dssogkg/+7j8myzjjTA+3jqmcyHM0YbbH2PKG+kMA9PpJNolOEGGRZW/ySoe1jYig+fhtqMRmzbavXdhVDFp/a+8+akkZuE/3rCFTH3/zWpMHLbiEz3n7UxFvqkBwHGGiv2ItMP226BGKLMe4Zx8eOSAb9tflyw8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q14mLhlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q14mLhlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772923493;
	bh=u7sREqW/Oa4+oC8sDPq4AzqNu1SlGSUvPTn7xzwx8q4=;
	h=To:Subject:From:Date:From;
	b=Q14mLhltJU+vbqcopoGu0kw4UiWxFWpQwzsNCC8wA9x0KK31zg6rB820BI/tVpsxH
	 4tOccDm2Uoaqwb/o1pTUTD/JZoRR+G2059dPeOWQPO4uUw9bCUQOp9X2syVkvuZq+t
	 QHDrHp3yGJRCOrWCcYqt4h15+8EO46Oph6R+9M+VRHo/koxYgZ4u2HuohCtbGAJc26
	 bwE98uonf4QBlRuFhV3QMH84FBZvTUE/EfsXSAeGAq1rdru2J3uz3OCPBdqWsETWWZ
	 nhwBNHviTNyJyupTQ/flwnmF8E50kTlAtobTAbHmY43lRBSOKJdlodSr23Eoc86JAa
	 UoLw+ArbED/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C5F55111
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292349358.10493.14777219234636132890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46c204c1b14f6d8d4971ee268dcba027035eda71df0ababd3ee26a176aa9053
Date: Sat, 07 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772923493
