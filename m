Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328561C1740
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727813154; cv=none; b=AKOTJk61Oevb3A62SxujewqHY5oGGvMGtbpPP3qjm7wtOQ6B7Yymqx8iGl+7Pj75dW3lVeHXKg+SAHLTiLuVgtIFIQ3VQaNhwWz3Y9ub8WA4mw1GEnLhr9VaOQ183lH7XMBAz/jYL1M0kidww1uHonBuhXXcFhLo1rmcG2t2prg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727813154; c=relaxed/simple;
	bh=OfysAR3kZJ1WiFt4HworMxf5WSqVsnjtLT1hMprEd0o=;
	h=To:Subject:From:Message-Id:Date; b=SH032j2xwWIhs+duN0QqGHgh31TcxpR6qy8brZpvpM0e6NjrDCoPuLnvVVO//gsgmUf/Q8YJ8CVdhuTK9iQ/EfSZ+LYHljCMToe26rFMMSUXPyHkqQfDysdmlWConYYVLCMLMx2MF+bvUpX1fMX+SbPlHJAa9Qb0C3xBQbxo28k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4TdGnvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4TdGnvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A5BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727813153;
	bh=OfysAR3kZJ1WiFt4HworMxf5WSqVsnjtLT1hMprEd0o=;
	h=To:Subject:From:Date:From;
	b=G4TdGnvlYpPv8QTdd5irR/7KTzG/QFJ6NPy6lOzWKuIKg1S3kmemQpEehLR0MudEg
	 EC6UA53TlfVFtU9VoIYTzw8D5shPPrAhcaUNNpUCLvnpvvcW9NG54rkGo4jCtEOClW
	 +5IgU0nPeiqU5t/8SH7qNENYyQHAmtgA2VgCWc9TjrBGefMfR9V/5DDol3MO53O9Ki
	 m5Y/an4aKNPqtXvnRsIIRJ/EtSv81+SX02S1K6V8svDVvEg3AtQPvYA2kaNw9xQFAa
	 WRqYnMNr9nbzMw4WUYqTj+dE+TzNoDN9QrlZFTq3rUlR2avZBivD3YPa0mn34pXIpl
	 iau0jmUk+H5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF0ACEACFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781315361.27324.3851276690027958018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbba3457294640c466cd10fcd600724391db2840d844effc57daa234f43ad074
Date: Tue, 01 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727813153
