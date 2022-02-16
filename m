Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1A7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645012284;
	h=To:Subject:From:Message-Id:Date;
	bh=l8RMNLnQ8J89ZikPeaYPN8JpWalnf0/xl/bNHKFibSQ=;
	b=A8TG/vuald/h1wVwkbpjDy8hXhah6g0K/lKB034zNWJuHhrRXdPp9HGF0S71jR/Q
	Z2Dxk9gxA70SqyVmrKeZgDl5eKffu10hmXL5f+B5ZXr/QSHNO8k725rtqr4TAo4NJIa
	BC23Ezt4q59/fwHEAsBqob2g/vUDOxlYh6UMO1HE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645012284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8RMNLnQ8J89ZikPeaYPN8JpWalnf0/xl/bNHKFibSQ=;
	b=N8Au0VZbvr/bnAZaitU0EWsE/Dnz8pO1d9FL98KT/BJiJnVoYnVmo7yfpQQeFKBt
	DJggWr9KRbCFue/OUAVS8WkwaWWVweYcRGYgQmCCgcQeeAL62DmaRwXXyyZ+wtjqE9l
	qqgXUUdFJgAKuZBBAhSj5m94oI9pn5QFkROUHkJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f025f7534-9681ea19-6c46-4a06-b45d-c31e649c0042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2cc98fc917b6e83221beb92320cb9a2b84255ed70bcb6eb2e77e3f04cfef101
Date: Wed, 16 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645012284
