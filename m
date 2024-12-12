Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ED3216E14
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734023153; cv=none; b=CL+wdUJtItOUP9C9dcVIXebT38s4pz+DnmlX4ZJx1DvEZqeYiW2+ORsXjlYIs7UK92HLcxSYsBxNrJ8TtenCNnQhEp3yRvjnML+G/sqUGZbVOgQPAZCpMc4XLlwVT0tUmGjqAX5e30DiVSO4pqy25uj9qQJ+yUXp1oDlHTVGocg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734023153; c=relaxed/simple;
	bh=7b12Gz0ErmJt3pm6LSxzU8AyFZ9rX9aEjkUqr5ZbfLI=;
	h=To:Subject:From:Message-Id:Date; b=mwpez7i8Psl/Vy+NWlq36E9K1YHM1TU/vs6vTZaWMrygrUz3lSEBheE2FUjO1Osh0ztONedoRLHNiOnSbfpnIABpN7WnwrKHwuNK8k3rFKHyaPfimahBvCPMr6rktjL957qSto2p0gcxhqTqWHAzWVMG36FGFp3+std6Zqu4inM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbxSOVQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbxSOVQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B9C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734023153;
	bh=7b12Gz0ErmJt3pm6LSxzU8AyFZ9rX9aEjkUqr5ZbfLI=;
	h=To:Subject:From:Date:From;
	b=HbxSOVQcYqsZM5g1ApmN+4OHBrV3K6OOncS8tVChfJ+MDsFBL/NnPQFgBMZMylOCm
	 rgjoMLotCdmmRBPknIcQ1geaI6N+Iu8fHzDxjFy4yqtsgOFAAc5aLct/qP/x+UgeNB
	 bmMU5hQGeZS4km/x4FR+PY3RcRRmDGUwkrt4wK2idqx0458VsRoN4RB3zig4o6cboC
	 Zc6I7661GfGqwOq70sSTgKFfAsGpTBHGzZpsEljXAhAVyotS1HLxRdYevyS6ahSrnZ
	 /2AzZ/7BxxNRnobTx/AZ4TQSJrHs9atiPmHxWqAr270nIIfIUpmSOQafLWl740l8Wp
	 yGI+vSyNlATrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7BCE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402315362.305.834381100798610347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e85cdbc44858bd108e93de439246715f163594b36136ffbcd39e91b6527966
Date: Thu, 12 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734023153
