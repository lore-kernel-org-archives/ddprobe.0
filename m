Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8536B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646332284;
	h=To:Subject:From:Message-Id:Date;
	bh=9CbAWLOknNR7fbxjHVJ5fXjKc/aa9U3d5Cl4PsK5xLo=;
	b=TYEkLkfhhUcLGj2B3TNDdY72fFZSk9eTeTIfjYxPtf5yI2KQN7eF1K3CgjK/NE7+
	58Kisg2KhPSmBBBzm5/go1rqaKbfO3Kk97PFuyGTrdsRFyVlcDB4OSU7JN5U7XE2a8u
	hgp7H+4EAeQPIQix3fR2H3UPMNljtyrMRL+nGhCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646332284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9CbAWLOknNR7fbxjHVJ5fXjKc/aa9U3d5Cl4PsK5xLo=;
	b=KyB8pLgp+vGkHN5JiiUwFKUySTvuSt04mYL1OqN9j6tjV6fczMmoDpAZckeolyJq
	+gTxmnsTixQPfjF1K5j3U4y8t6DZsxie5tBJShRlsIvfJzgoOOH7We+JqHjylh/erI9
	9Pkhc+jFxaq+PiLS8ZcXzVoyofG3LzAET0JPQpe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f510d0f59-99681c7a-8b4d-4c73-8414-2383ac8fd825-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17d4166cdb8e1883fc4fad2f68cef7eb6e08d9282b7315f3bcd29a43a4b383b8
Date: Thu, 3 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646332284
