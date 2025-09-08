Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101082FF153
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757339994; cv=none; b=B0lJucWr9vaQsCCFvxVqSm2uRwRjptggKeoFeW/pQl8wpesjrUMiVCYbZllcSvKFdRU9mpfPi6OxBBHeoLXmj1ZDmAYWtWjzDxsnAl+usmx2kiTY7/yny0kosO7I1kWGV8ShEEY2LrzHIhYqmypprL8JW1xK6qmKbDLkKSKdSsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757339994; c=relaxed/simple;
	bh=/QZA9a0LckJNiCEAwjOtGAONABjEasauZBbQSp+Yr1w=;
	h=To:Subject:From:Message-Id:Date; b=jwWxiqD0ZCNOXHbhrg4ThjDgVL2bMmyIHlxrRdfbYv3Fsq9REIyVcxcYPE2XRnv0QtRrSIybIyC8i8k9ROS0Psqi+q9NC8TRaO2QwKLTCshjFPYvyid3GeQpmkRLrHw3fOsZyEn74/cJOrXwW51OViKgup8Z+yXAsrTrMBtJHxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJgPMZd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJgPMZd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757339993;
	bh=/QZA9a0LckJNiCEAwjOtGAONABjEasauZBbQSp+Yr1w=;
	h=To:Subject:From:Date:From;
	b=RJgPMZd+6+JpfwtMpLNMTXK4WS0kwHpzSM2pXRJ+3dUqEgOHhkLLAk8KTXGeDFmFF
	 QrUWybpY00c3CePT9MpoFYhAJOdd3PQxfsWrzQfpMIHYByaKzHDW+oXfBuZg32DAnj
	 IPEE2CjbM5aZ6Fzou3LgVVaNPuedmHIgih03Lthh+ALFuN14weLqpdDO9qs/DYWRFH
	 +vniZppYfd3UpUNKrtMsFwzBVv/aSaPKD8RRVxR/B0xuG4BGbKTlpytLTqRHe/fjVv
	 2CSeg9ksIrA7304kNCmf9TFqvwuBU3jiiFcmHS+Vk9Nk+uMulQ13g9+K4XCqGVEtE3
	 RP2XX2ShG0TKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F166CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733999357.3288.11306047208043256070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d394eb0fc9f1bbdf29bdfd12127feb672be9f4f71946c353aadee9427caeed2a
Date: Mon, 08 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757339993
