Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F7F1C06
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 03:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB696C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 03:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685761686;
	bh=J+aNvr1GyKXWm5WoqCF+mAN4ijCPf7+PV45Kfde0gXM=;
	h=To:Subject:From:Date:From;
	b=p2o03vL9t0PJAZndy9tlcO77LeyK3SHSKjziZBHl/jknMdc+c3soE26/vQ81LIgwQ
	 udruFUBTpbmxfhfmwEW+GrgPjxoEK2ZRuoFOAzthiU8EFoKN3KsGXag3vHwe5f+ck2
	 W49c521fqZovaEUrRKcw0tHXRoJ3jumdjBwsrlz5jZRMKDZ19Av4VCkH+hVWojF2HV
	 hdmbUOWEgSnVJmiqqWLnE4WdMqohFy/3j86JER8fVIC+9R8erRtyqRsmvd7jYg8/KV
	 6V4EfKvJqu3lmN9sPxaU59dsdApWKDQSofgc41nTSuSOTCQbbFz2JR3jPfSxeyrdd2
	 OVr84LaYlr2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0A8C7EE2A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 03:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168576168577.20007.17477111230251419765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2e8391fd00ef78452500ef732f5cb8170302bd660f1a775a4478aba949cfe1
Date: Sat, 03 Jun 2023 03:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685761685
