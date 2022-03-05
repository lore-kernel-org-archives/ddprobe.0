Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5574F7A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646467284;
	h=To:Subject:From:Message-Id:Date;
	bh=l2Nv1fUgOR9jWCdvdG7N0PxJ3hfPfXoHDe6RYjsDdeU=;
	b=A3kbJ4PkIjMztD6ya6VJt1ZYvZCDn0RSAPm8TCyaxdaB9VRwjm/QYAwUcglPo8xJ
	LuLOZkIpFwy2Hh9vrq41dgESVu0CYxXy+PjDq8tKhWgSqVYuxVslwuVT8FS6dT2nyEy
	BxwpNgKei4F8lt2TrvYjwc41uYUqwwWRFRXsiJTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646467284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2Nv1fUgOR9jWCdvdG7N0PxJ3hfPfXoHDe6RYjsDdeU=;
	b=W1p/dA0qnQ7RzHKZxAfBrmn7CM0/6F61+Bpt/s8ffi84uOPMngj9cmKSKBj84upk
	5Q1RvYJkW5TDBvQrAgb5Ozf+WrlC4Cm3RYh12rBngaKMgbxsEv7Qt0BqAIDkBFV5eea
	DzlATL2xxij488aRhEjSdaKuOJwPp3J+1Et1A6BI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5918ff0a-737018a1-b1aa-4024-8382-a2f1a911a18f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24aa62953a7df817a75f5724153a774eaee5fb1f7246ec5de54559cfce4feb7c
Date: Sat, 5 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646467284
