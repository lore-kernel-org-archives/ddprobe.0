Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C628A1E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770258234; cv=none; b=h5stAGTNkCQ78Io6rp60pQVmBwTY6cBzMN0ZlEKDm1lT5wMHWdlBh1W8aVfs2BbFWam7wgDJ+bXxNUgxBhQB0mZPtIsqAuxJTb/O48xxNtEqssjWmlN7hvFH51f1u1D4vWW4oTSHvPzYtcc3Mab9cZnQjgaZHEB9T1b/oHtImJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770258234; c=relaxed/simple;
	bh=brPz3ktmfEM0R+vW+Dw6Lig+nO1wJHmousZ4zFXGrwA=;
	h=To:Subject:From:Message-Id:Date; b=P6WU56jwp8gDeUJ2FPWW4yEB6LH0cOhtwwE3oJap2ry5hBjCotOOrUTabYOh/h2CgPUxsFfTJ5ldGomJybcU6fqlqI0OvmyDbmG08gzF1CbAx4fIIJKpC+2h9Aj1F8+QCXz7YwMyota93uYUp4gyDgonrfExlU9RK5fxN2CYhbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0GZWNbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0GZWNbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5EDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770258233;
	bh=brPz3ktmfEM0R+vW+Dw6Lig+nO1wJHmousZ4zFXGrwA=;
	h=To:Subject:From:Date:From;
	b=V0GZWNbqw8PZ3uSjc/LtyKp2UEe9JCuNczYlSgcG3X9Ee0TmxtwG1m9huVKSX/Ewz
	 88oGGPuyu0c/IEMrXaDaq9w9v09oDGdv8hus1A3m/lv2y1yZZ7/xASRFZBl7RrYtKt
	 slEKmZ7hmas9GPd9obHVCuZ1K1SAcJRFpEYOtiG+ARK/g4WwrKIkaObZxjbGY8BK8s
	 vWNcdnTLzwotzSWm7pEm2Mf9GEFWdAIHokoqX3s8cht8+lotgiuO4+FtKY4nunVMR7
	 9Q/eGcAp7zTvdqL26oViUHLyZryHIuWshPpqXVCWiE+WzlvVeCaaIrp3nLER3cnSPN
	 vkKWV2/3Y+95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9081EA7945
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025823364.22525.17453664717929237178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409f68df174b63eb3873eb533e42804b5a19a3cbec935cc8fbc13564815a990d
Date: Thu, 05 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770258233
