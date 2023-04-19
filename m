Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E73C17
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681906445;
	bh=OX/SdrhWENoaJ8UOLqEUxbaU3hYaDXymLyDUsl0zL1g=;
	h=To:Subject:From:Date:From;
	b=do8Q2FghhTK8O1dPqrKzas4jfuF78DZRHnP7BUfa1UcRBrKjHW1O/4YutI3cT3tGh
	 BUYSQZiqP/WKx9SeHD/4HR7FU/ib4eL3QmMnN1BZ+DcrzNj5gq7x9O7QyG4qxzh9h6
	 IlvnyXYpJhIFfwlpGh36DikreJTAIS1oRKVeFLIKkG+ZDddRZIjgxwoLjxjCP+6uRV
	 pK16+kJouU0uYtCq32PLH3NqtJfES9VjWyFo2zf91A7GT6mqX178bKRnkGJW6wimLH
	 zopbIo5auwb9Cwl0qYagh9afr/rCIUU0CJmvroFqx42SakBBvMRJGubg5ramFqzINx
	 GcrzFg9SI0KzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8493C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190644574.23367.15307522199792681024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1678fde13821d6b801e72302e0ff4cd8765e09ec9663cfd4f1bcc595040357b
Date: Wed, 19 Apr 2023 12:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681906445
