Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3E648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B4FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674366725;
	bh=faf4DGlK86bPOdJjeoNDb+6mrgcvpEbpJmFwZJ79RVI=;
	h=To:Subject:From:Date:From;
	b=rh7bIPrdRHY+t35KNkwSfMa9kChMFflODWbOdp1QdkMCUQTR4WbpryoNCJ++YxXwp
	 0x7XVzfo6qAu1uALOyH9pXcCgxk1CpCTDlBoJt5cS0MXSAdvEoGNXQkJSyl5SKnxdy
	 rIevN0apGFLfs0c4J8j36IN6ZOK53qyJ3Yke9I9LxfP04Idn7U37BLzVZhEiNH7Ywg
	 WajpmXdK+PQauwVvKnFkXHqBLhxPNzvnaGwbxeObt7zTs09X/8TdrUMDIFtxhvHwug
	 5Y3xmvRV4AtH0vHHs8Y6RJ34BOki0nzk/6/0NBL3KBUWgMWDroX5KaUvLti5fzSR0h
	 h9jY3C3rUWqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DB1C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436672577.20383.7962826078364805352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4cd3f5ad67108d3607d39abf6202f630c84ffc140d731cbfbeb948fb714ee9
Date: Sun, 22 Jan 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674366725
