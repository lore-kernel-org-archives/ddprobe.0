Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE7F257D
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA0DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664541653;
	bh=n24zkNKDUriuj6phVMWHhCEWB3ER+a/ypHoinvSbp1Q=;
	h=To:Subject:From:Date:From;
	b=evb0I2F9dIWsmQdQtXB9lzFUTZMkT4MPBifCwfQMx33LUATm6klu9/r3QUMh3+El6
	 gNgEgz8nFfQbOFdN1JJUr/t15BxCWackng57yywthTNbeOrWUJfBCiMt0I8pU4ndfh
	 en7fGCYlP0YkGgmrYZEukx33uke3szadWISLu5Btt0rOZbF1zb/c3NruAQYrrDH4L5
	 DHNTdm49+aX5/6QCEV2J0760obF8X/aR8ngTJZNQMVCSbdehwLElFNde31swNCKlRG
	 Qvcr/F7PQVf+htbV7ipwCJCnpHKy7p7ix5ZCT0Za7ccCkl4R1smosTL5czdGmE9EZt
	 Fh318pi+s4G4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A4BC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454165332.18847.14924166152510769158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cd20e524728adfdb2c2316c684a845d3555c29c06cff84663e9e0d1df21c4b
Date: Fri, 30 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664541653
