Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C528347D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757587794; cv=none; b=QfQsj9tQaYn6IGHUUu9vPxXEc6FtJx1Qoji9pln2DNk9k49O6EqirCUmQ6bjQR6qtMEG61ZVZgDBD+hfu/inE+zDeNM5/ZWo107N55DoOdZZ5X3QyrKviUOazKPeCp3fxP7NS1F8CtBgTgaLpPlX4HvYrmi/Og0PH/NtvgUsVXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757587794; c=relaxed/simple;
	bh=+tOvXKlNh1/5+2ffxy4aMNVSSpfDwV9mLZe1tTWOKog=;
	h=To:Subject:From:Message-Id:Date; b=bS2JWYaKWIUru2I3JB67MQnd0snuuaWEubYs2lEAKr+eHmAP/Zc2hR9dbUryjfIXCGK2jIg7EH6PZVDwgZP8CwIPV3rnSHrrF5jkf0ITRVHKtQ5dZUBiM+IZ4H2GItQ/cnNvIg6U/UIoZKnTiq7m8z9Mz2fzZfsdDrVUg7wIZOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6e4gRPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6e4gRPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B24C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757587793;
	bh=+tOvXKlNh1/5+2ffxy4aMNVSSpfDwV9mLZe1tTWOKog=;
	h=To:Subject:From:Date:From;
	b=t6e4gRPrveLwfxeQ9W+h4ORrIQNKTGjEcj6oISvkpvT+1F/bSfsxWCF0wBIRKO4I7
	 b91j92rcwHNF9PrUdBanR3PNKJq9eeMM7zmihjbdCFro9F5mjybMA68W58lztgmmab
	 jaLZOpJeD1lsssRzTuL5k3wP9xX7XuWgz/+a327cgHbhZ0wni5XoNZokz18EJv/Rzh
	 q8KLe2mD/Pb0l/q7N6c12bIxmROz36ptBVPkpLViTkWkfUBqc6A6Soxc5twKmt9AAN
	 r/cQ7rwCSPMqexwcT/ncJFnAGsrD8Ztj068xBhdTmwvd2lyxG10ftYRE3GF/w4aDha
	 XIqMi4Z854+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7BCA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758779357.23533.7462868147083843606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c4daa5adb2b29aee22650fe501af249a844303eb9205252f91bbce85392e3f
Date: Thu, 11 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757587793
