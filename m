Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971D24C9C
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11DAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695128708;
	bh=Km8AbAh3z1S1QDcNY3TUx2LXqJ0pM7LzK3nNmaI7MwE=;
	h=To:Subject:From:Date:From;
	b=Wh5aui+hyPgqBvF3wHDs7nrJbRWCKhzjmn42v8/p9yhyx26d0ARXwuRn3Vt7YJDzH
	 Rrl/Ia4JOYKqV8kOn6b7jNE2dEDg1QhoJELQz9uJmpnQlpx9AIze5frDbkN9Ta7D6K
	 pZ4rzFWF3WiDNmA7l8eB0SRxj4MbMF8nBlpJFYg6MuEghK+s3csSknoRnu/GDzaLCV
	 8dm3oZqPnOOlxfRi2Fjnxu091LuBJZfSRmOqk6NOmRJilAg+QSmRMqesR/4YRHGRnA
	 /0UU9ql6gUxVYP9cwQk50rK7xMpd4vC+OeywOE7gvAMQ4tQ+tws5qVTXlJvlxGgyM5
	 KUz5gaWV5uR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5494CD5BB8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512870867.23682.17294686857620812274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4af907ec2c78423e73d6fc79534353cf5d3404c9b8bfb3456703fa5d0d3d072
Date: Tue, 19 Sep 2023 13:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695128708
