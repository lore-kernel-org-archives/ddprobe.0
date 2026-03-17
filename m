Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F02346AC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773776694; cv=none; b=RJvVdGMjmnKAwXRZyQcrK1+qkDEgpQxCX/7XuK1s9WxWD5sggEgWGPxZqESG3dSMVXN0JkmEEs3PZHI6Hhc7W3hI0ZLWBiwnemKDRPY6ieOOB2WgAIJO16jiI0RKsyXoFIvq3fKuG5La4OaeByyXA/x5WY/lZCLD/kc5AJQGaHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773776694; c=relaxed/simple;
	bh=D2ttsrVfGoBkVc1FqNGY7S4aQZ9ZS7SYPEQSAk3PRGA=;
	h=To:Subject:From:Message-Id:Date; b=P0nwms6QADdWnNrZCi8SdQwV/0Mk/evN5c3FSM+NOHGiDtUQGdFGUd4Ldkc69p/3/xdJT9feb7k1KjJOSJfH66JTQpUDoLZmpNAPr3Py+55IIQNwn6N6z9QB9Mv5Pzy1PQgembEtBB+Pwl92eu4hzOfGMUqcqn8KnqX3gP3sVMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJQX6NaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJQX6NaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09FAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773776693;
	bh=D2ttsrVfGoBkVc1FqNGY7S4aQZ9ZS7SYPEQSAk3PRGA=;
	h=To:Subject:From:Date:From;
	b=MJQX6NaY5sqrzVuatioHI5Z/RugKzZoadZVmZbcD5FsIMLQ0aPgC1bGsv96Bn3fUU
	 o7VcUtDW2vtlr4h6n/Y3T8LliEo8uFo7hEmZOWF6dDhBsoYrEK2YKZFBpkauXDz27T
	 HWv4gVGzanFDVVjlFDvupZL8BHgCWzyunr0Qzz3rj2ea1k13TgSAtVoHPxbmYwL4MA
	 09B16yXolR4VZYZezMY8AXsgKJljunuorn3Fgl3Bhb6ufa2/GShimHxPz8JWpuIHJF
	 C4coEEMBJ4vVDotGNXvWgwtYUpwGZZVbZ25Li1xlEvqtFraTSe5ewLNEY3x+4OoZ78
	 60z3YQBZKbtow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FBFEDA1A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377669358.26741.14282870280152524660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e6661625ffbe7a2743723c6e33a205ee487257185129321660d7b16dc51995
Date: Tue, 17 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773776693
