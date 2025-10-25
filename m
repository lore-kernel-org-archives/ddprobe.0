Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230F821A94F
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761419994; cv=none; b=CublpJfTwPkXqDsvu/SMe4byeqje+O6z4NH/h8pV/IWw1URZaY/sE5h3+WAOCQ/9gHm0IgqvEbw1yke4TxEEq9bPSSC4FiQCWDJ1eV5DIW4GtJhLbbod/Vv3EKuESKf8AQzb9zWNf0GBFAMe4WjRGq8h1vtyviE13NeHSn0W2C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761419994; c=relaxed/simple;
	bh=0UteLVJkjnq5umH1Na4JmtmJoIjEjXSBgOIVS0KQGw0=;
	h=To:Subject:From:Message-Id:Date; b=qgb/fRlpfa5LCfaQm8WI/7vZNd4t6dovPdlCnEbpvXt6HDPB/Wic5h1dY7GBIwxo/sWCE2YdTzCFvLJEWpBqNX8MA1PPZQ74B84OBSFp2okoui7MFVWiM8mk52ZHQgkQT6qWtvxEdVM3Cl0MEkMGJD06EXwO5niD4nR/pRntcNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQg4S6th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQg4S6th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761419993;
	bh=0UteLVJkjnq5umH1Na4JmtmJoIjEjXSBgOIVS0KQGw0=;
	h=To:Subject:From:Date:From;
	b=PQg4S6thoceIMMy1oOl5/C8EAEeIT13yXNeiXYSy96aPIbSydP/h0W/O5FOIajxYG
	 soSwFW9Gh4anNrkorOWv5qmvNWGpzckQ867x4L0OfO+elhjGM89QpUP3l1HHJMuxQZ
	 DZLSEG+KzUfYcHHPzd4AV9q5GIPAxsgTwziOJjsXlzU7cfAkiEo8J7o/LRT/XXDojX
	 AZpG1GRGb63i84+DaJog1BD9kOoo1M/VMedUjFEVxYRV7xnjiIaww+ujD+NDRah7cF
	 arEv0HFvJgiG5mIyqXC/nqFaAhWHKg4cH+7Ga4S6/6FhBZOFCuUbnXtkTMihDmszee
	 k3vmws6kG2ScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D22CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141999358.13867.14017663978643359783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903175993364d08c64ce376039a82fb7b8aa03d0e4efd026b3ca3f1cca5effda
Date: Sat, 25 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761419993
