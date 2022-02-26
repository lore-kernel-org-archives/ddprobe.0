Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5848E3B5C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645892184;
	h=To:Subject:From:Message-Id:Date;
	bh=xJXNxy0uOf7ncqyx2StGJ9SflFurGODqBMuSSogRgDQ=;
	b=iOviHy9N8eyE4YNGpQOZZ7Nk4XeR3SxKi4YZ7wKi5O+LSawG/WgGmIyfo84AeV0u
	fQ5hUGWDvPQvTILkfh9LXfB1+ecUfcW6q2ZoPG04GXz3CO16M+h5IrhCIBbXc5usl8V
	l0I7GmDmf4qkJD2dIr4Emz8bun0uzUHoLwZBYR8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645892184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xJXNxy0uOf7ncqyx2StGJ9SflFurGODqBMuSSogRgDQ=;
	b=WpcIvpexT8dvCbSLb4w9q9FkfWsQtEe/nWbYJm1+LDAuRi0QAtidWkB/GhpF/YHK
	h+nzYS86ETtcvvWK9zKR0cKrCExuD9909n+Dh0Lc380rXrhUWDVn2nZ8ywTUhyviecz
	Jj/USHTcNxZKZax3SHxrrwSOXRf7AYyZ9MId4zz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36d1aaa5-a45a1ae4-1e50-4787-a85e-a3b22519853f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91a1361e0cfe43a40b82078a35575569e4419af3d5bdfa9f273297b07bc87d4e
Date: Sat, 26 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645892184
