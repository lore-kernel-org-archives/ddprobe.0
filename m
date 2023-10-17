Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DAE440D
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRMosnzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F7CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697511428;
	bh=h/4BmvDPDIiIkzB7Jwv7jqVi6MwR9EFT7YHroajlAWs=;
	h=To:Subject:From:Date:From;
	b=VRMosnzllpvS3zUVjPKHmQbtj/Cz6mHTzKXoJBWdILFhamPLbFRVTy8mxfYJzX7sr
	 NPi9Aje4zMrt+ICNWojiorPn9mS8xWqOMREHKaI96vc5nimx7Z0QiyJRkbPRAabPi6
	 xoDxF6kunOJCKmpd7ID82YgEmRqyLit+lJZqYrrnE9eOB+DPY92rMTlUnTTolUjMU0
	 5v1AZIPpoDq9mjLIIDyGhjn7lYmz9sGJVs6kfqlVh+ALQrgN8G+wFwIdh3zE0BPYp+
	 BXMy7NBaQpzkIdBPkD3QRjcQ+Uiy7P4jAvMW7JPHItJYBKZrcAOHFo5A/5Cqq+TO+R
	 AB762f7X8413w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63CBCDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751142867.30914.10858181717750188570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6de088676eb2665db14344253519260575922654d09a70faa27e3936a799ee2
Date: Tue, 17 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697511428
