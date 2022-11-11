Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E070A62A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8490DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668138054;
	bh=UuNwlRVJ97Z3cX5UToOjWz3ox9wClQbSoyel5dBPSsM=;
	h=To:Subject:From:Date:From;
	b=VkD1VnoQy+QO91MiXq8cJ7zaDCsZ1BW12GJSXWDJfAMlK2eCOd3qNqv/z/+MC4snU
	 H/QpVpLLmqIzt3eHL98Puk/515ak9APgeXSvp4wzb0YmTUlhdE24ZJpBYmy5TPS34k
	 N0JZmDPzv8rme24ujOc73cbTOoVtxmdg0ERT9WbGonn+kGnjx7TrBbXveH/hJKfi2v
	 MHfz+B4St/t9DvbESjx7EiRVTEw5PAbpZ8+ERMdP7nEfPVIvUR0s670ST15urzd6VF
	 qVvcwdizYinW/vxxU/f2z/F1BHhb6YsuLS2wzrUW0undt4ZnYBbtRP31Bcqm+HRWR7
	 3HRMr8NhUkLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB1DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813805438.32107.13906681966428548398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3bc76279d78ad47a20628336b0063518ac30e65cf10779d32a6d9c2c3697de
Date: Fri, 11 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668138054
