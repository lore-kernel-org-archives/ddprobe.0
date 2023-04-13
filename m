Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C9ABA36
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04EBAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681416546;
	bh=cCGilwmMNCeNBlFn5FX+JLz8LjCxpMBH9idQdMxdSvo=;
	h=To:Subject:From:Date:From;
	b=De2YFst7bS1yk1f8CEiIPQisqEr7KPkcdoDlLghp0tZGajdMXb3BQwQu1wQxHz/al
	 Wg8t79oOctDysHV5B+bpWl3Y5f5SVt0WRl2rA2HKHSk7HBQ7ZsEAkae2Pax0VlEcP4
	 Y+iSOv/VAOr6iSsfFL471j9xRytA7Jwi8E0Dx2Mvfn8awL+UeCYdzcSy2KWnA9rIZ/
	 cANmEg5CdP8Iewek0QArZFJkre2NnpBwC6/cUPuLCVl7Ad3B6i0Sumdn+2rhs/4OOu
	 Fu/tCJNxg0cyxn6JQhqK7CBomQ5vIR5xM15uIMAU2oqxjwvalVH9h2FSrQrOrpXlGM
	 tHrPFW5B0mJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D12C7C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141654584.428.11772589880449792177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddb877ab6dca8d1a95b99270115afcdcd6ad17f52d585c8de218197a65c17a5
Date: Thu, 13 Apr 2023 20:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681416545
