Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349DB202963
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749991794; cv=none; b=LWvFADuu3bWFAb+ngZ9tIOXG9JbN08miEMHjfVP4GlslILMgdNfofZ3SVd0ia/IKuO8m8p0V/TPv2KNwdpVcBPt69lJXIk1VxjmtD20sJv+VVFWqjKOXwJFwHd7cfCU7Gx2HFkbjh3qfIoJfWnjrWaptfIH8ogovBqaxMOQ6twU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749991794; c=relaxed/simple;
	bh=SxWuEmJ2u9IYE7FAQtxfybHZbpK4d8emRoTVc2Yv8eY=;
	h=To:Subject:From:Message-Id:Date; b=ah/0SEXsyjE3dAfEwEhR3C2W8XQmIiRVUYbV8wb+qf32rJIydr7I4E9AbmUHMm0Oxy51f2wa8MvBUfAp/d1/4RXfOLV+NJRz2ehOAcXSGDDzbuiZgQ0m4FOLOfMlbEoXxdBKN3ixn/n0ufzzqQQ3318Akb9cETDvv/cn93a3Iiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHsntdfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHsntdfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749991793;
	bh=SxWuEmJ2u9IYE7FAQtxfybHZbpK4d8emRoTVc2Yv8eY=;
	h=To:Subject:From:Date:From;
	b=kHsntdfg8S3fBYB0OZgMGpMi+N4IwqIUfQ+wOY7fliY2YJ2mSrYg49UPw8H8hDXAC
	 u8QKCNX3KGkPhmtbuZtVlgN+Uahn0gwfJixnntJFjpp8NMoCR+40QW7FshqRVyaHij
	 RbnAP2X62rnzxlhTHcsuL6N54/OBHsmEMHr+azyAL/woyPXx7ISCzRxGxUjiVeihpa
	 1c/bytefwYig7OdCdq8PSGIBsB/j6l7IY2o1IdHjiSlaqWVG+bXXkEmCR4MRiyIkSE
	 fWlIu6ZYw7x1ZjrolItE1itQKdxX6KpQTFgCcFPk7DUt/tMLW0npwZJfkarKusGkoo
	 YdHJcaK1dcPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB21C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999179359.7040.8655228466780626705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99565d33951126d33d01f48f25062324bd0b7f99d96c33ed0fe742204c20014d
Date: Sun, 15 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749991793
