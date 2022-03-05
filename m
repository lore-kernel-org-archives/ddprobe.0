Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6593E2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646518284;
	h=To:Subject:From:Message-Id:Date;
	bh=F61cvZ/dmuRrHtX4XDoibQ7dTPQ3xKgJtXrlL+4hRhE=;
	b=VdcdNtq+b65bI7cAXGLYp05V0uDtUqQx8ZoNNslM9eMlbqmWsVMCo7PlU/9NBAhV
	6XLB6TI/TZMbMI+BHeKxdXpXHbi6bZiz+/URxjc4MlqDUPIlgwYtvfD1+6QolxpD5Hv
	I0FgAcJCkJl91bby4TqavK4po9v6rG/Rr10H+vQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646518284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F61cvZ/dmuRrHtX4XDoibQ7dTPQ3xKgJtXrlL+4hRhE=;
	b=I4frIWhq6vdwsJPlBHZzb+YqNRTS88TJyPlUvsMVWZb3YSmo6yz++mtWXfg4/CFU
	tt6F5gzrbi90v847EVmIBl8K6Yy0Ev4vav+VVmdgzsqG7jMkqIJ6h3d+o97o0n+a2Gx
	95wY4+puyIBiOV2sLDJcxehV1TsKzAX142kfhlk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c2331f5-e92fdbd5-58c5-48f3-9e01-46997f4b02b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de8c484f9a8d23e6c3e59585bf3d2656b0c115fb9c583ee7456c2af4034211cc
Date: Sat, 5 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646518284
