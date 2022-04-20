Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A510F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 01:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650419938;
	h=To:Subject:From:Message-Id:Date;
	bh=ivPSu/9aN1R1SQdOuGBjrSzJvXVr2+R0z5TB1BtsUUk=;
	b=NWtfmcU0FN3t+5+OUJT8evdL+mC5T1XNxFurAvBN107C9ld0S4870lfLzKqNIfVr
	UEwyQ3yNCsyYX2i3U8a81TzYw0KPwXr/WKZrzw9ha5CLqrqhQfKX3vB69USZTjOb5a3
	bEXDX7pvz9zlP/P8vwiHSO11WCboU/KWMEV7XITE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650419938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivPSu/9aN1R1SQdOuGBjrSzJvXVr2+R0z5TB1BtsUUk=;
	b=NFzzC4LMwCDoWu5SWYF0Rn9Ld3g6V6tmfkwYHwwK3ztHugJncSoMg3h13FWXYaGv
	9ZK5irmJkwb8EfxkeJHkcgURzQUNHZgfm9YfBUZgg9or6RS4JvGx7l/9nWhVzpVn9wj
	NPHKq0QCVp+r1zJOdocKxhFUqTNYpCty1ywpoby8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018044b1b401-21fe0dfc-486f-4163-9b1f-6e72213e191b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68f8e37748895bd95b3652d2363b38c906806f92c067c618d2b47fb80680fe4
Date: Wed, 20 Apr 2022 01:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650419938
