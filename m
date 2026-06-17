Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136B41DA23
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781658994; cv=none; b=NaX+sISCHuIET/nKqhM1XNTjsdf2Puts+10qSqZUeC43jAKkWluBnf2VI0Vc6hPzn6o/20wvu2o4QQAdI+E0LAmpwvEasztplUslOuwH86LPulJaIoxDKRcHohljIHgGcr1mjY1WeV4BP4L/T7tEbbkGRfSfqjHvbYPj+MVkBu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781658994; c=relaxed/simple;
	bh=ArXjs1n7u83zZYMTTu2e76Jte6CQiP4rAqs1zINiqDo=;
	h=To:Subject:From:Message-Id:Date; b=DcZ2PdUc1kE6FBxTNEDsnJdaJBXs+v9qF/a31mV6D+XiUDq5a6OKAnxF5Utp4czKnaPRLQjSeSq8oysoHGSHGZCqZvkdCrMR5oSWX+Kp/MUhnFbUeCnU23aAd61DRajtysI9CGVKfC8ub+lPhmehjixGs2koMHM7PNcufZCEKmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPzlR7Bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPzlR7Bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6977C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781658993;
	bh=ArXjs1n7u83zZYMTTu2e76Jte6CQiP4rAqs1zINiqDo=;
	h=To:Subject:From:Date:From;
	b=ZPzlR7BwuFMIRwDbW5n8gsu0S093mCAk6oIyEecbz7WlKkBq8fbvSKE8CZMYdy2BT
	 18l6VdRiv8RhOmpLdUYYzbwRlwOnm9zy1Wy7aVaRbvgEf4cfA8Jp9XOs3oyX5HQ5CG
	 vVdAXYY/pOK1Yx++/jk2Zh9TnpOd8fBkI8bbskUFZWCPILqZQB37rSES0RIMau8xJO
	 u3IEcJJf5TmI016Pymury1ixdYcRuUnSOc2zwlX3oYjyq4p7aR3magXOR04EKOd8zx
	 ceAcqpVLs9XcY0jTQXmTstc9hu/oGGGRMVOz1UN2xoFKs5/6lK2vIl/7D/tGGbERCx
	 BB8wVtga4ZpqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACAACD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165899369.31467.14176709313002908784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf37c164d3d12b164a61706a190805e2d2bfcf5d8848e813a5eb116e517a5d48
Date: Wed, 17 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781658993
