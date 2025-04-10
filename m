Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8BC33F6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744329594; cv=none; b=fON3wGEWJYM3/cIxDqELvDZL0snndvMfdssCxCUY0/6UMOTNLJyHmg8iXkrSWNpeekTLH9t/fmuE+PVVRPrQAVL1mGuE4Z2owhkfwwewZ2bDTDRUxSdiqucHiikbsTle0JLuml5hxFqsfYEYdhgqD12AAhMsvb42rqjU3kvKZ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744329594; c=relaxed/simple;
	bh=2GpPEY0ZwwIBWzlZw3EQA1ItorMPCTVWZz9ZE4WF5as=;
	h=To:Subject:From:Message-Id:Date; b=Bk15m1Bc8ftt86abgIPKCPa6TUwttG8wThHaDLk3pIEqn5EDsgrMNBFWBEVnKOf0jJpuTlN5dLHcBQyUjQzv0vOd/1M2aZX6Mid4zaosBlGLrY3E+kd3K/CJlHaGXIu74YEOOWt+X6BIu4+zf7/zC9OVXKOn/bf88OikFexK2m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIkGhNqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIkGhNqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC0BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744329593;
	bh=2GpPEY0ZwwIBWzlZw3EQA1ItorMPCTVWZz9ZE4WF5as=;
	h=To:Subject:From:Date:From;
	b=DIkGhNqePIndY9191EJ4ztfdEjw0Og8NZUk9vyRwSIXb7JhpNjCQZHonO4NZmJGtD
	 fcA7fCdvrOI6hF5XENis+HHZFKp0RJ0h/y4EFlX8Z5z/w2agzVc2qxYgxXU8Lt6SaH
	 eR052Clb8XahApyVSUK75TlY1bIfFymmMo04NY16FHKWBXdH1nnBSkAG5IbcxNRzaF
	 DEG1bBgH6qxh8/FPNa5YXyJY7xRL6E5cJzhHZPK73gKaKlXoPrJOE5z8UwbHcDTX4E
	 d5sJMPBk5/jlbd5Qgh//pE4OQeYfMGtNMi00iOb1i+1pD79OkzXlIgGwTCujiz54Uj
	 8f4o6K9yF3g7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D9C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432959360.8000.9498671257944804478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e80436369b1df08b359fcf0766079273408cc063420c0b1192ceace99224c7
Date: Thu, 10 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744329593
