Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497A970818
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781963794; cv=none; b=pdM12BaefiLHyopDHjo+vd2+Z/10oABMAJsnsVR/eveNfdVKs4/f4I3pETiqJNlAgbQwIYuqDmlmhPsHaUeFQGOuWEn1PmVmzNnhS/ZkdFp5obcWtibsy2uvcQLzmHyrJzD87zhjh2Elptdw8aPE1VNvNjDLWmMRiA9GEb8orVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781963794; c=relaxed/simple;
	bh=yrcKNjelU28f8rI6QTqvRtE/SoHVCH3MzH63SLPo+i4=;
	h=To:Subject:From:Message-Id:Date; b=LWZfiqXJkce6VOb1KSG4JLl8PXNqZY5nVaWqce879Q+ApbrUgpUZ617ZKijG+lrsMn5kzCB4agTZdcpWZUQ7Uq8tL3e0UuIuM2hJogss2HpPivwvsq8Pe1wA03U++XaC6ydBTnjOyI53Gi2ZfEXAGrd7uRljmDMDxsG86MSupM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/pePzFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/pePzFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA785C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781963793;
	bh=yrcKNjelU28f8rI6QTqvRtE/SoHVCH3MzH63SLPo+i4=;
	h=To:Subject:From:Date:From;
	b=G/pePzFrXJpVm0ddZXcq4JIHr/EyLzSuTas8Mcbb2zgUC9PJlEpXUGS3i2+Zn4R4D
	 2T4CyJ8zu/vFdR9r3Asm9dDMgC031QIE/3PVJf+h9SZ2fliLc6P9YnjyJqQ7/TK66E
	 lP10UwgDgGuLRWjQ8ZYZdlvu5LrRqdLbQRyk/S0CICSkrwsfPLdGSjDUuZsJU8UKX9
	 2WuFhQCCqLFm/TvblSZLrMg8H1ZF+mIax3J9cZP9Zk3prDwXUsQ+YPgiQD+cx9XFjE
	 4V4SMz5sFsI7zdFlLdAbbDCH2f9w2iQLCyHpJTW09QzJf6tP+996oriYEuBmJ6YhL+
	 /FJBCv0bcB8hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE42ECD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196379370.1921.1316056781743354101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06c5924bdb624520f999e787093353c96cacdd76a14fbb3ddc0f93ca84e4714
Date: Sat, 20 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781963793
