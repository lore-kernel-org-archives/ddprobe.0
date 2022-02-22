Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B937B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645553485;
	h=To:Subject:From:Message-Id:Date;
	bh=9XRZNODGMT75agQYpggPZOY01alZhg9E7lvEpH2pDu0=;
	b=aq4Yr6iefC43zCnbuTVp16zgHP18z+gIgKTzCggDoUxDCQb5nxPz3DuMSPOJVuVm
	AbzrtdDq2sMdcUIFzKZbKJ16p6Rfv79y9pl70J3ZcbHvvyAVWw2GzYzZjf4Wt8hE3lr
	SD5yXyXO0weYcVwWb8LtzFjUZyBjb16rntncxA84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645553485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9XRZNODGMT75agQYpggPZOY01alZhg9E7lvEpH2pDu0=;
	b=kmY8eaEWpl7rKfalucXDrudT3ZVzvXnysLwapn85gNKKTbT4eRvyBIIG9PzV3Oar
	5uXTZp3Lxk0fGuHytv45b7dmE0aqr09yALO0ehBQTZhs1LEevNLsFCCdbAeNIkGsaZG
	V+ptzUcyQRAJWqdR6POnsT4qgCRneA/2vbqcD3zQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22a184d9-9dc795ff-9fd7-4eaa-b42f-c999473a11a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c56f12d2e4c576fe57dd26dc6a78b8dbc361002b87bb41f1f91d420de04fac7
Date: Tue, 22 Feb 2022 18:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645553484
