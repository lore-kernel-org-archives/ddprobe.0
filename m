Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE4E7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE64C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666387853;
	bh=s7kCUdlUjuQKMPz56SzQr8otyrUCSf6mv6yffJoO/pg=;
	h=To:Subject:From:Date:From;
	b=b6q1LjrSrvYK8V+dh+TWT5Jfrhz61diMB0v46Y5FTLtO+Rn4B+YANTBlrZUCbf9SK
	 F8hORXB1nLrQqFza6dm7UoxdkwygI3Y3iwtdr1gA8LhxQydDtazvVWYWC1vBUO6awk
	 tEwhfTsWFUE0Y5qS5dPYOlM8lWU6+Df7Sd8/WEX4VuSFM+LRd0dTnJGFegh6GmI6f6
	 HMn7glN2Gkp2uZi+qa3Yl2jCc5NQ22fY5ufHQBQZ17hWt4DLb/LqdfwQOBwnWF7Bht
	 WyxutTGixYEgY8AZUA+lzQ0tKe8Kzm6VsiQdKEAgnDytsZ5AIYtPukKZ4VENj9ntMK
	 FVtR9SrZwvD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5961FECDFA1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638785335.26380.8933686324393042913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeb4015e24f805890fbb309869151c900db531ca04eaec8542e0e0455d1bc3d
Date: Fri, 21 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666387853
