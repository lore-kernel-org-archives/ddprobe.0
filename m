Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBDB353A91
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786434034; cv=none; b=p7W13Pq7JNtPZo5rQFI7tHF9IYiS/TpNlrIeWZTrgEHLfgD7oGuYNpe5LlGX1pRJdKKlCpeJmicBwXfq2H2AX3iyZyyniN+9bpZlivaztn5XV4nKc3+38gngibaF/peGp7N6Se1jBYzDdhvdaOQ/HjkbpzS7rF7E3DPjjG5dN+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786434034; c=relaxed/simple;
	bh=oasO+ShvricwiqfhWAcTsxrSia9192uKE4q06ACkn6w=;
	h=To:Subject:From:Message-Id:Date; b=hTcshNzYLvj48u1nK5j5ur+3DqTk2tICmxtr7iFiJcpQ9FICtWr9nopAg1kbCyXPwY7yjyf21cARcvbQnP+RTicej33FJNmPDQ/Lk0uI51yDP9q3F7wuMvt2tIuE/L89g/qQomN0PeJmuvNwa/CmE3ubHIEERcQ6TwCGp6dxH/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoxVIBY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoxVIBY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05C0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786434033;
	bh=oasO+ShvricwiqfhWAcTsxrSia9192uKE4q06ACkn6w=;
	h=To:Subject:From:Date:From;
	b=HoxVIBY3zHSsf4kb16HoDYz16f/+ZXWwWtFObry7ZizRUQUnSuZ58HO09YzBN71wP
	 FD/Sdj/0IOY3qRkw/KJfeQ3H5diFbuvk1xr+H5+HuU+xqMjEb2VY6Fy7j8bBnzuc5M
	 Y7ekC/GgHWP1YI8NMOgTkkVnbPEzPEpoGA8AZ0SkGUhhybDvr3IiynRwWYc3wGNdux
	 Eghq+UmnAQymRRbQlSyX1OU7CZlK9bS1yaGPOS1lUSST7Wv+7kpG/p7pBPsrXcPmTy
	 iOyBGScvZvu9QGXh8q6myzR/wpHIE00bSCC3Tv7dOzyDgSbiiN0X22qS95lQkJwtoe
	 9nM0z7FUclC9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDBC5B574
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643403368.30886.9438464558120058166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cccca3bf610597f3feaace7f3b11b134482eec79b6b3cc0f3aa2d4ec57cef3c
Date: Tue, 11 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786434033
