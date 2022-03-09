Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4DB6469
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646850685;
	h=To:Subject:From:Message-Id:Date;
	bh=7vJVLozdFUm4q9Bus8D3N6GYqCV9ZpLR9rkhE5maW/w=;
	b=VjKoP95QaxX7Zs+vE35DXlLi9Y/ukmhsFRV1zXbc4Lmi3U8UJvxdDksaMLukY2vP
	ZjoGt5zzwjOP5vAWllYHZgjbfsyy5iViL4F9bue5B+ENmTdtDAZywPyfiBbHc7/kUHx
	dtowNtyvEz/x8wX3QPvv4i7iHYaPf7PfrOgpISgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646850685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vJVLozdFUm4q9Bus8D3N6GYqCV9ZpLR9rkhE5maW/w=;
	b=l+iacJHl3ubw5K+30dtIcyXm05BCIDV5TF3KN+zVRNgZiUaZBtudvqAV4ZU1ssZ1
	MAkTVEGp8TQ52zuAh4gRtvxH63+Etm5pkFHMFvqd2iN7chcf+YtMK9SliTNXI3CHWrH
	NSGVwNs+b5mttSTQyDfjObKAEGCHoCsXpjVu7gyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ff337dc-24efa883-b09a-4cae-9246-9ce4883b4f6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f6dc9a58801ade84b79829092f7154ae4854ce4ee912865f2ddab5dab8922c4
Date: Wed, 9 Mar 2022 18:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646850684
