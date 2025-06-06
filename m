Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276AB170826
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222594; cv=none; b=Ee1K4rSibID4RiE7m1tf14c6KYh2mJV98dAT0VUuWExSBImwosiBLUG8cjeDWt7aUL8QrZnJjMW2HQzkCfvGFFvM/x8TGeggZYwEYz9O6NJtvMfLwoZLwjMZzL/BJ4SvVdUr0XJnL4VVCD3+y6rAhCpYoeq3Nq4RnFy2TGiq3qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222594; c=relaxed/simple;
	bh=FPlVwdku90AtT8hLo3ZsDlDHkvdgdwyTL8bv2aQ4NLE=;
	h=To:Subject:From:Message-Id:Date; b=gokw3C87ORcFwgOOSW22P5nePgx7JPlmRUUk96dCrBjVdwzSNLqVSiadsKmsebC0hdZCRHoXzX+eJhbvSKQgUgfMvJdb5aJeN3bkTIMqbjROXS3Z5rbfn7ipvTJi8hJ2wsi/ehSAAkqsHW0/POK97kz4DCgCljHsaJKFIFXaMUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtbJzOKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtbJzOKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E14C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749222593;
	bh=FPlVwdku90AtT8hLo3ZsDlDHkvdgdwyTL8bv2aQ4NLE=;
	h=To:Subject:From:Date:From;
	b=FtbJzOKd4yTOB01aUXIk0W5EeoVbGB7pmWgme9PkoPC2ntVfDBfC13/0gX2CqUX6D
	 5bNmBUSMGFQUCDt7AbxnTmZdoW9azHnzXr6LYK45ftoCUVEjKhXnm3bllKrucv+7aC
	 ZvA8JI6A419b8vGpo1v+pL1QtYOOJQkoRmAWzfNABUsm0iGg3d5yKu/QGU92CJfsa4
	 sR6cWg+yV2q4Rn1qwSuO2vYuX2hrAu/rf48qgXpYW3Qg7mDlZ30kifjk+J3iEs+91O
	 4BkA7IyEuGrBTnqICROHeuczIVFqZT5536b4T1HHjtwHIrl6+z2Yh4jY8nq6nJ9Pnw
	 hsj2nxDqJ8RVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94594C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922259359.27528.12329057531188611915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe97e90760141b5e172f0a07031aa47e38f60157bea43c24527b71be7bced92
Date: Fri, 06 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749222593
