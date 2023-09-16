Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA232109
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB940C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694831108;
	bh=GzZ+y5VkZhZpMtF4FuvIbtUvCQc3+o5xi8G0xJOu0DQ=;
	h=To:Subject:From:Date:From;
	b=ICQqOq7yGTg6GMqSh940FThRUrZ+GfgIMcLV6Uc/B/1G/VFqvw9XXmDfDM0habUKB
	 Wp+9ooL3XcR339j5oxZB88nG4T72sPqB/qt2gRNzZQbBNomSRyXBvRWSWHwq+z64Vo
	 7MTjDQlhgFAO+Fmz2QVdsiPwtqa3aIb6RF7TGsnRpqr1U9R6u1vFIuxjyzmej8DjeY
	 wa1FR9QgWV0iRHAxsoNKer9LzVy6YTjNIopSD8oSkiewW92AbYs/M9qlzmjXz2D2xW
	 4ITpkaCpJCYBfyhrKIy55j7hLqjxWTsXFDWrMyaz1OAN1qh/dk9n1kkCup1OdP24LQ
	 zXyuhJ0T69DwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B02CD37B1
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169483110865.14632.6119345285695863006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bcbd9ca7ee528fa45c9138aa5e5e5d6a980d86b3da32ada8d1fa3c04ae90c7
Date: Sat, 16 Sep 2023 02:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694831108
