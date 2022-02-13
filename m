Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F927A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 17:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644772215;
	h=To:Subject:From:Message-Id:Date;
	bh=JlxsC1Uq5tyQBSkFSIbT8P0TX/tkKDFICUGv7WQ+xN8=;
	b=K9YG+dXZBRePhpngj8ZpvfpjHRzddmr3l3ciXmJeUEcY/Iv7yTL6T4Aqqc2VDU53
	iit3QfCN4bzPHETC7GCDRt8NWIg88gyWGAiqAdYSWphQVaXKbsfrOGkqjfUwLwUKdDe
	/gAbKdTJMbJYIq6SCWB44eifsZPkVl+BW39v1Eis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644772215;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JlxsC1Uq5tyQBSkFSIbT8P0TX/tkKDFICUGv7WQ+xN8=;
	b=TY/M72EODd7XyK4DJc0x2RS0gTjsW2jg86rDnsLMFkY83UJN3wU+B6r5jhU6i/6g
	PKiA/Bx5O+uvKBGcR5lrzSIepkWRybT6vjO1ARM4LWlidTO5gMzSzcXxlWhI6r9/byz
	4bOxwBj8j4JemG1u36LSvKsMc88/othhCeUig65c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4104a47-e004700b-1af4-4613-adad-025f63201e1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8e51b321a8636e8541e8b266cde09ce5bd8c684308765582b3afb4053bd0429
Date: Sun, 13 Feb 2022 17:10:15 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644772215
