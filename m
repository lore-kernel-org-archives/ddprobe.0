Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4E33515EA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788750034; cv=none; b=cMQYOTFdJ/H4m94I/r99gG2GRR06wp8SztOLCC4p9IU7yHrgYvSUu2KQYEPAzd9XL9DRgsgRaeoNkti5kU/R7PoMJ833b4eygnxXA/sFdrCdCSiPvF2nktmfSVhrwKwbTF9MEcTQ2z5/odGollnTuREe1Ann19Xtra+eykiKyKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788750034; c=relaxed/simple;
	bh=10/kTSn4U5TEEOODdVSbZU5Xy8ImRvLQf+tf5+oI+8Y=;
	h=To:Subject:From:Message-Id:Date; b=OhxxsrBrd4hdyu1/xsZ/K9f7RAOjzX8lsRefQS9M8eXEedXBEP/kWYa/kBLMBDKXx+u7yj6MO90L0AjFpQLlUd3XKVGU/Ap2u69VGtJ0cov6fh/zquaWQONi1K5iXefPpl4bQ7qvSFFJ4ZLi2xz535Ijh9Xr740Nq/KYw1eI3q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/JQjA19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/JQjA19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788750033;
	bh=10/kTSn4U5TEEOODdVSbZU5Xy8ImRvLQf+tf5+oI+8Y=;
	h=To:Subject:From:Date:From;
	b=A/JQjA19g7mv6UwYe6yDC1srWdfMU5YuRtqZre1DOr0WxqaZqDRkNuNZcYmdYEMn2
	 kUEoQBdj5NaweGutr3DO9eG1OqR/wDlEd0Z9qlrb1f2S/RwFKMiw95L2KuYNn2HhNt
	 zFFzlqgpwbm+YGvoOBFqIJxKwpEc7iGFfifTOgZggQAN+7+BcAo1uFurHqrMnx8IUC
	 knwKmqCsyT14hsj6zOa5ODBXwV439nVVLOWGR9MyNY2kFXTiZKR9vpqWSQkVujbFAM
	 CMvuodB8JdKWEj2i//ADtBjy3dJyaTzMxRhimFjubftPG2bj+/47TgCPVveW1gdgp/
	 k1mV9Wx8k48Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F6FC79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875003371.19982.12270668237357723338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd2bfa3016725ac97a9b87c09f1fe21e2715b0c182142e1d0dae1ebbeea787c
Date: Mon, 07 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788750033
