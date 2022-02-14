Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089B07A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 16:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644854437;
	h=To:Subject:From:Message-Id:Date;
	bh=cL30LCW5vaDneX9Opa+qCiFMGjcjccqXWkc0rE8Ddzg=;
	b=CnUwrzSnJYecAVZdKK8zMmN1osQUrqArMZAgjuCmjl3LFbEvb7tejw7rYQjcjeru
	rv4p96gcd0gENkJT9WZU76BSOkVFzJbB+T1iqRooIwUsQdUNqRYSBu4i225s4I+gW8T
	R26NyBN70SOC3CO5ut0O8nEacoXhi4d1A+qsA3Tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644854437;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cL30LCW5vaDneX9Opa+qCiFMGjcjccqXWkc0rE8Ddzg=;
	b=EUidNCtbn6SB7Uxm7VvBNUmvlLERGmPkoOi2DyyyK7UvMNRnVyASs726Q0SIm+Ky
	dfrqzD7UBBsE7Q2HnkCPed4XUktoSoiIiZONGb+/PPHcBNO/EGIC0QDbloEQW47UlF3
	DRt3rmOMABeQeHT8zAzd3KcxjWWx4TF7y4/nU7ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8f6e463-df6b8c45-41c3-413e-b1ef-866fc2d665e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c391d8ef28b17d9a22a017f896be670d1f4eec371670de9145cbaad9cb111f9b
Date: Mon, 14 Feb 2022 16:00:37 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644854436
