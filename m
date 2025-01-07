Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286311E1A39
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736285754; cv=none; b=CctDfZ6dVDZPa4Z9M1T/BakCbQhA3WioyG31ceE/wNhaqxLrv3IPjHEyK9TA0ZjN039uMD9Zbcp+ORyWHGJ8WlQM5fPtj35NOB4hf8t89c0W1SOLcEuOFYrPpkNn3JYeFVb4kxJAznyh82dMuZ/NVY+qiEezizhPHCTXOsDvyS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736285754; c=relaxed/simple;
	bh=H0B8v3Ue0aTlWU4DQImzBSaYcR1vRswfle4OONU4L4g=;
	h=To:Subject:From:Message-Id:Date; b=g0A/IvISsO6Ctqf0RarMx1xGG6BWtA0G5UM/CS8ri8geNwZM3zQSapeJ7WU822h0BU8CpCKEVY7enIaxPAUlju63v6ZNA8ynRpWR9+kqX9hQns+EeMMLy4IES8kYXEowH35zV9hheIcFoxatR9tbEM+AQFFGMm1b1kvo7Ju6kF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj9i99hO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj9i99hO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C0C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736285753;
	bh=H0B8v3Ue0aTlWU4DQImzBSaYcR1vRswfle4OONU4L4g=;
	h=To:Subject:From:Date:From;
	b=nj9i99hOeb6/6Pl7fIF9PTqzS4jBYEyVNFDx3MH6dufaypY/NWAjub5EmQD7DXopk
	 MuTfucaqdqltwO9s/VhuL4z6MWgx1i/nRdGutJ0JY8sMZlxKo+EhNc5M+BFkMlm2Qa
	 nuLloC68D7Rb5xRhZlOHaSvVMWDhxQLQmqqMcy0PN0VV2v+owX0eVKK10CDAL8p53x
	 8nGm3yz3uRNvI+H6JOMWSZOFvLlvldDJnDCTS6kkEG9Af/ykmbUe0ph3EA1pYcMC/s
	 23qXyAfVYpxIHJ05dnibreUxJX3rPF/lJEuqGwMkULJ6dWQvJkGBTHYYYbwyEOOBWk
	 am7DG6+N7Gujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632AE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628575360.26435.7675716728348838607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76548ee275b9c130cf2ee690c986edeb985047e57634f032edd521fdd6d51cc6
Date: Tue, 07 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736285753
