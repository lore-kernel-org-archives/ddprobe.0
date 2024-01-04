Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B7525553
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfwbvOYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92855C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704386896;
	bh=j1fLR+u9IkNy0K2e6GWIXnlX5uHc2xihMXFbOfZj6/c=;
	h=To:Subject:From:Date:From;
	b=EfwbvOYrVsDd3JTy/mq3iPJq0nWv+bcWSq883DQcP6hVxak9qvcsVYtoXabCJUaI9
	 Nr6ZZqtgiQkFHIDhtG+LtgA1JvYZ68G8kML3amsRE16UIazcWw+Mn2glWCsOVaZLc+
	 WgvHt/uwEu/gG9tNebWK1AGxGE3gav2SSbEK6vO3Z3iUjvu1jKKfybEysoIHjqilsh
	 p4RJhkCyo7NWhAST+vNUL6Ca11Pmri9DKBQR0Iv8VU2FlOl06Bal+FSXODVcpujgUX
	 rtGhlimBqoMatMmdk9wPHwc8zZ4JHCQUWk0PbTXEEzfgay4wHT/yEMwmbacxwSCAdt
	 MOLu0s1B0TZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71730C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438689644.14700.16394854716546527053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ab95ee87c1286563e4226fad1f30362cc387d895ef2dc57f114630f193004c
Date: Thu, 04 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704386896
