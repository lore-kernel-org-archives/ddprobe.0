Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8087F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 658C6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665937853;
	bh=kAu4Tej0TJ6M9+8nPnEHoHe8sojRHNoz9NvgdSzCtos=;
	h=To:Subject:From:Date:From;
	b=nD8wkT9teW7JdgP3yH2gRydg0CwvCYZ4KMEwsORcGZcVfabDcoj7njXj/dil1HE2W
	 /RcuRSMzSzwE8gKoH9EAVM9hCQ7CPV1BzJiWciF5HZgvM+bhVlf6LSGPp0pKhpotC4
	 Hw3uKAb2clRRwhhcrSQDUE85c4FKkTQIKCOe8sVTos1Q5EpB0gkmNMzNu0aWZOpvRi
	 r9bT4ir+AwI+mylUFnQ4X+FYwQi5E/gLwfqWBqmYH16MWSEHGlMchOCncGRGW82Xld
	 V+yIHOqmbvoO76DfNFwAtaX/2Qpbfj31XqYI1Q4irVPsZUA+nGBILqu7iVChD+7nxH
	 jeKuZhe6hCA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7E0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593785331.23155.16232989922233867817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75a1864bb3fad7d631cf6ae7cc10e5c052a6d2fc89ba72883686e939f21f8ce
Date: Sun, 16 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665937853
