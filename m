Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724943681
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645039885;
	h=To:Subject:From:Message-Id:Date;
	bh=yK/6mHLI6znX4oWgrYE2Vm791kCuoH24jhOgBlqbDT4=;
	b=LwGjSuDDlJcpjA5sX5wqQyIvI7SoNhg8d3S0CrjJIZ+GEk51E9vpyKjOXU3g8r1l
	tb2qwrLsXqLZalbBZYdJxpuQQPbYZD9gjy0donzE/RZwsMGr0o9UA10/6bcuetXU2Pg
	txpZI+fpVrquBkW+VcGpe0m4vCGyBC+eMex/KBPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645039885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yK/6mHLI6znX4oWgrYE2Vm791kCuoH24jhOgBlqbDT4=;
	b=CUnPBQNeffoppz8b1m+wV5PCIeGZkgIv8aw7uwzg3r4nGeiYyoo606X+SLLWn8hy
	PaNVYsJzZLKLe0jxFLjBU9CO2ceRxF+8ghCW+dCq3oQ9BJTj499iAs8g8qj+2nBktzn
	SdysdVdymDySHphV0VsmFEKzSRUtCNnAwrvxg3xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f040499d7-d36752fd-b0a8-4e14-a36b-09fad5827b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caadbcaeae9d11780c3653e3673540293e88fbd60981a805b007ed8d18ed333a
Date: Wed, 16 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645039884
