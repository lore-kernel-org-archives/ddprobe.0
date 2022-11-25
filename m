Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB84F7F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FF1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669335054;
	bh=cLZ5zJl38iYHKD+BF/H+gDJ/A71Fykn5/jX2A+Dpglk=;
	h=To:Subject:From:Date:From;
	b=AlOWc6hjULW5VVyDhkGtnYpVlsEdWKe0oDAyUclWawjV2nBjlDA9XhghaMzdCbZuy
	 y1U6GPff0kXK0zJQib8Xq97Rb3aWn+NIQiOefPrnIeZ7uARi9a5fJo7BY6Q5WrE8bI
	 9Uh59fVHCRJB7YapAVgkXVs+IthIU89QQ58e4rUxVoFALCjUVeITrSn0iBWRUWrebp
	 pJw0jB0gG9qbd6BkbjIwcLQ0vqBrjq0oUwuhSsRUrlOssGBbsHV1Q2g00n8edL1nU6
	 r+AGjFC3iykY6N/jh0di4ZsDc0q4M0Q1Vhp6fv3Mxlx8HcwPQ4s6+hr/x30rKVf/qL
	 nkC0T97wZay9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527C4C43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933505432.18282.4755126228833326079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6281fca72e8154acce554942d627a50199d2dd1c7ecfe728b6a370ce8bbb80
Date: Fri, 25 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669335054
