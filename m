Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD01F748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CCBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670954487;
	bh=MNWNlwERBvWE5q3Kee2bITA3BpIyc5plOgQQwzD07/I=;
	h=To:Subject:From:Date:From;
	b=CD7mxlKxz8yM0JS6tA8PbL82n969ToUaZHbjPavKSHQtoEnLjXK8F0QH7N04UgQyL
	 Dk5PIFq4PaSc8eJ/aEiMaYkKKTTp8LaKQecEkmnTEQ7KM6ISKT/Olz1Dbs2FVEHfKY
	 QUBKWw8ukNATi6v6F4LVf8S9JAMTDJKpqrQJS6q4TcAMKByz1501LLlit9Kw7nXhfD
	 Kdno4f2ShAM7RFheUtTNa+EaOYHfngsIVdfZQ6DLk2Ar6un1rrtytxp0IP0w/d6Y2M
	 Y3Ynuk6inRelXnPNQ8w9LJKbsySizT3x//EMqhMgc8ERQCpG4jSUb5TGp3FuMLoBIm
	 pnNck62JASYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68413C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095448741.8984.16607450537844006979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dead936ae02386ca1835ef01fb7b01ea772a82e15effded3ce898ac854dd279
Date: Tue, 13 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670954487
