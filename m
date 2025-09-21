Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C4854652
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758464394; cv=none; b=PHrKSuZb4vvPLY4V2y1NUrNc103CAejRgYx9xO+Ij5dkJERo6BltdmXWT/T1/svbZtjoz6J5LX2HIv1MYP+5YxKJjnV+BdPrfM/wjAsNNpeVSQ87YvbgrtiiUvYnFU2D1/pld0TLQN3sy8A20u9Em3nAB4Nq/yy5bNluiW8fKVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758464394; c=relaxed/simple;
	bh=xKW93GQ16GXrQ9EoX+ZtZmv+Y/FDLGmr2g5AdASHxPc=;
	h=To:Subject:From:Message-Id:Date; b=uCNRmsnhVdNLZ6awEjJNhEYegGUF/KWJfO/Jz60UQ9mfOZD4c/m+BphgGZ4g6OAXRVm141x7mWbSlKDElnjJ3WTUVkQk81iEfBSZivNcQXeHY1rEgsTSgNX625nEyDhIivhevcV4DPE6CyUMC2bmf9PRxl3emR2k5O+9GFbp00o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZgLtkXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZgLtkXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3490C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758464393;
	bh=xKW93GQ16GXrQ9EoX+ZtZmv+Y/FDLGmr2g5AdASHxPc=;
	h=To:Subject:From:Date:From;
	b=GZgLtkXgfBQECmL6FzvVx1yNMSgvz2rbgw1t3NCrnOzYwDe/TOJl5dXdIl55L4+8P
	 PYTeX7QhyKWO8eq9TF/f5k4LwsfSls8vbRvyQ5I2fNmGyKUEk3kUoM5rlRMd5Uvly5
	 sNDZWJZQe8UatNm4pPBDJjUKHAImP5md5ofuJt0Pv1YCuX/265G34sia3v8oeMxWZU
	 jHRwSZcaWNG0sVDtvY+ug3En4EhA1nfCkFzk5RN17Eh2AOSSKe3vrErRazH/Hav6RF
	 zqStOp4CSS7Tf2lvxrfJU6FFy8aaVDKHo4axchwzXd09YZyEVYTXYXg3E5MsdFwv6m
	 P+WrYgkKYy4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CACAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846439357.11940.16968649840629365661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f056cd518c89311d3dfd11be26a567b740c36c27a21da02c73f488b9b0495bb
Date: Sun, 21 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758464393
