Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D067F1FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 22:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648938178;
	h=To:Subject:From:Message-Id:Date;
	bh=1kS56oBT91HWYUEj3CA3F4fxxT+GtM5+uyh3W4Tr+RI=;
	b=MuRN3J9skqf/Jp6JkE2bWu/OtL6FZ2/k2IkfgpAYrKRHKa3dpHmSbJkH/f3AmCQr
	/X0wPQ5X8cHwAZq5YauhziJ3LpRqcAdngWdgABvHA5PLlUont6a/tjaV7KKmwkKIdEW
	uK+XfPDpdi9Gmd4iESCcGQhuXDdRftqlfNrylqxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648938178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1kS56oBT91HWYUEj3CA3F4fxxT+GtM5+uyh3W4Tr+RI=;
	b=SUbrqhbgy6upTxkTidPyoMpHNVuS53S+m94s0Fxbjr7e19d3fYJpB2QwAadfnZrF
	VsHgfjl9sPhw7neTdWSQx0MO9+DJPQhoPhYPf6Jq0s6CUil1kBwsO38BPr0Pe0XnZyD
	NSIwn+ub8NOSfx+4ePNe8/nG2deP0c/B6JtA9bSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec5fd691-d03399c6-ba82-4a22-a6c1-0ec6a61711c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef77f209a61ef5f8a0f613edf05a93989b3eac7e2f5e258556ef25c56d06aedb
Date: Sat, 2 Apr 2022 22:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648938178
