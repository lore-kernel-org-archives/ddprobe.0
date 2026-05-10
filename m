Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF71A2DE70D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778437234; cv=none; b=XxdgNfbWNzzVhK099Jt8Ia4+DAhy7E+9AsiY2Y6fRjCeMXq/K3NKxqfl1ig5/H1j9/4RERT3XCN9+7KjjnR3M7sVTX87TeAqE2fS4pkNdTLPWEROGFEq+r+smPhwQjJBP467wZ4ZVj9ppN+PD3DeVi6b7s7rQA12tQDNTJlWkiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778437234; c=relaxed/simple;
	bh=y82331ZspOQrwK0VIj1NN2SCEYVj5+JkpbqxXgdU4B8=;
	h=To:Subject:From:Message-Id:Date; b=H11ohHNZHNaeLPINOuy0n3xvU72vnxvey0/Ov6l+CnksTHJx4iw74YRB080snsNUd9PaEWGlEfk0ja/OFTx+6inlJpO03t5AfKxe4l3Jnk0o8Pkwsa9PW8dJ2TlDboP7OWxH1r00C0kKfYmLhZy010q9VL1kkQ/+JlZnCTL7DFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yn9mNVmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yn9mNVmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89DDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778437233;
	bh=y82331ZspOQrwK0VIj1NN2SCEYVj5+JkpbqxXgdU4B8=;
	h=To:Subject:From:Date:From;
	b=Yn9mNVmZpjZ6uKiR1K2Z842a8gttzT7OG0OJ7i1Fr2xsvt/q2BBgWy4te8EgxGABg
	 ElC1Lc8y85DCLHOq46ce3ZgMxvyb/g9bScAkHkl1lHbeMsQrY3XnE/GiB9az7l9LbS
	 VFX+xpSjnM5u2z5FEH40VvtsxIIuFhoALEZoqcpdwv65xKXoYx9ndIZ+UeRPfwO001
	 x/WeBZZ7dQScIl2Eruk8lkdjlm3BQ7rmUABxIAjXtsnzMcbg/4/kc4zyc7zkSDzoT7
	 eKSjAKzokGOHNqMVUhDtiM6QJeoEgWy3QsoY06jwKWun1hGdLTL1dC5lgmmWMfaRq2
	 ThhSPf/azwsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A49CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843723371.13221.15477449596527115393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897e6c25a8b211c5acc8f4e7ef4175b43a9243d408c302b503a0f4b9a71130bd
Date: Sun, 10 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778437233
