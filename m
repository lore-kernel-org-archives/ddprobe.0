Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409AD315785
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784679515; cv=none; b=QEOUxGDxU7DF+nxEVaFkLcS0xKd6COALJ+DAnJE6oB6ZIHG6vf7mu4qn2mPKelfYkSQOGe0NI0Cen+r8G5aURIzMzJxeKmRRp4jHJMxuBIoqFDmVTu9X8GmCJMbaA8FHwqSd9WpgDlLDyR9xJbiEBs4TjUujqkTjUwh8E6pe1lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784679515; c=relaxed/simple;
	bh=64Hl8bXn76m+YGBewjg+XZAXulF9NIE4bRSV7WcHAE0=;
	h=To:Subject:From:Message-Id:Date; b=fexnzwyP9/SxJ/MymimlXofow00aYl4ytFQJ3tgwtqW1Ez8WOeL5VgZdCM/G483X2g/KnXZMN2GLn+LzNoc/A7HIapjcCsf0VcgHETa5TjTclBjlvJkXxYSbBfasYEBhk1Z/vrE6Jm73P5Rac/M+IFjjSsEK5YbVFj89erQFs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK8KYXkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK8KYXkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D409CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784679513;
	bh=64Hl8bXn76m+YGBewjg+XZAXulF9NIE4bRSV7WcHAE0=;
	h=To:Subject:From:Date:From;
	b=fK8KYXkBZ1SDQ51U5xtlWqan+bFhkaXgyxMlBLzasG9tsKtWuyKlg6OAxITQnbNWu
	 mfITvl8mvJFVViYWBfooWD9mLahUtGhebQRsdrQgKNOCNYxeppQmW4xgMgs1HvVPMP
	 S8p+qFRbEdnCUqqZdm3mEK5bW498qv4Xt9MoJGhFFRx2igsN+FoKI9HQs6jeRGaTYq
	 Bc+CLA8To18JTzjdIEyNpKaxfSU6gp6VF6EO4UaANEXBQ3cNgoEphxY7knWrgWm88F
	 ETned2f/+uJeyD0fKmPhwL8mAIOTVbB3yKdVZMsr7HJ2DEucfq+LOXu9xn5PaKvYbp
	 RxdTm1p2ZdvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3D9C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467951369.663.16277481822675349384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18d74191c3f2c94e079d2f0802e01c7943fe4a377f3fb45c51df891f0057447
Date: Wed, 22 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784679513
