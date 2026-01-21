Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA64279F7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013834; cv=none; b=eu3KqfysEmr/C+wbdQcIsTYgyLu29/GAlq+2gm6VN0tiWDdqReWAATyOG9oml1l8dXi51H2zg43lSs3bEH0Be+Ov8N4A0fSP/VfP/VQwbemDgZ3r8Ve6t7j4phuV+O/lRp9u0/mRaIu2MsIpfWMRg2Wr98t5l+fvYxkpZiffFk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013834; c=relaxed/simple;
	bh=vBTD6lhSTMh1x09ev0EaeJdVYHKz0mfJPFUTSwG3v9s=;
	h=To:Subject:From:Message-Id:Date; b=kLbdPxXV+HzUZFoCGQ8ZkLOP8OZzCmvgw3QhwWgdlOWI2wIg9BapwiGJ0gDEXxzK4Dw3cyn+nmT2JbxEBJ/X6mIJ7tYDpuCJpBlNKmBhRYq4DVqFKP0sJU5d+nHElrokxD9fi7lg2yzfKCB1kDUG9+X0iGZkdzisR3jPanBbn2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8LyRrrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8LyRrrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769013833;
	bh=vBTD6lhSTMh1x09ev0EaeJdVYHKz0mfJPFUTSwG3v9s=;
	h=To:Subject:From:Date:From;
	b=V8LyRrrMOmNNLjHHSf7EyhjkkyIXn7o63t7USvXK2jGXkjTxMTDmSY3IosiRN8tm9
	 McD2pp+618WwEGh5ACPOuGfiX74S2TTGOU/kcvcorYXTOqezGPdQpKGii9kWJQrsVt
	 1sps+lLxKW6XFZvAPVc+Ufdbu1b4diEBPry+CH6ieYQ6G/5BCkES24zzvT7Bps5HlU
	 nVNNq9YqybBvGbEjLaQJTAuLHZTnTjJCySB5rX0X+70mRNqfsXi3jNwANAfqgfmXSC
	 +xrnSts4tIZfMToJwamS11L9PadcDK99fhLMUFoLfpQN3E48w+BA/oClNoq2hnY4Wt
	 5kCU3IM5ngDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92055C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901383358.29119.13440849319897433232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0edaaa5f82d07d7338265565ff716391bb04b7a631cf461c4361f13213a5ef9
Date: Wed, 21 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769013833
