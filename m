Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20BC23B62C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772696693; cv=none; b=P/byk0NF5wfzitCUqSR+gayRJpwbSXqNw0Ot2YKFdWR6HwyWeJ5yA4/c+scLp+vB0MYZETv/2AxRk1nhC4aStUaJBOUesAD1S7U0gF000ehweYorlZYuNBk2Y1x+MbzCvr24omJ7il3eJFQslzZQBBIgAH/k3gMYKBgAHzNGcvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772696693; c=relaxed/simple;
	bh=nW5f+s7YAU4TOvIARbKaGJHRMlKsWqyq5atmufzBRvc=;
	h=To:Subject:From:Message-Id:Date; b=pFBdZJkHXzShKa9mwiORa2pPfrOaWS0ulpf2OVhO255yLU/7z/sOBRjoTkxl/hh1EZonzG4h504kbOuv0yoKfXEDfXEx6m9YYSHCKti8cut+4W1jQbZLOL5IwVi0l7tkRiafYFH2/DnwMyKboLgRXBSFUIRhw3WGy4zG+PYcyUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkNHnxix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkNHnxix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E6BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772696693;
	bh=nW5f+s7YAU4TOvIARbKaGJHRMlKsWqyq5atmufzBRvc=;
	h=To:Subject:From:Date:From;
	b=SkNHnxixS1pEU2OJ09wG9RrowNRaFKbRarphu7y591ekZwjR0m+G3z4/3SomDoZdR
	 +OGy5gWzRRk6Jeo+2d2RWVGu7CTVIRQWhW6O64nWjvKhinz0qCemWbjMA/Uj7TQFnP
	 nQj23gZKHYrgsW1KHNW7Kz5byCPikEIrX6K+nFaZbR4I1DjOp4WeJZxwr2Ou3x0kik
	 /I/+tSaZyacH5DDol93zqMkbeIRcuxhXTpLIUjuW9hFSSbxcvmBuuJcFxMhulqssTR
	 DGty4/V6Up+jos7fbaFo25qzX62PiaOd2UHXxybGY1OjOKHR7LfEPanqjPhzjbne7l
	 Iwo6yIQxeAz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A414EEF316
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269669362.9977.8285842702173215436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c0c81a8e568e11ecad1b0834ca25e4c500aa58c48dea77bfc4446b5aefa44f
Date: Thu, 05 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772696693
