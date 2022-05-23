Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACBE3237
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 18:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653330239;
	h=To:Subject:From:Message-Id:Date;
	bh=1AqvL4syIjQFSsIlYJN1DbeHmmwVOphk7jT+zp9eLDE=;
	b=hDAs/coz5TiWfIMegmkX+deDOAD6Tc/QM3GajircWTTwPO30YsLgaAm9ES27Svd5
	bY+0wAO0dSew4iEt8JrFk91fVlgPIbylg+1GWAqAO1sq7SYUYRQabATuCWlsHsLIBms
	yuDhR2z5OnuWNfwmdSPPebz/DUmX6jb9kTaYGl6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653330239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1AqvL4syIjQFSsIlYJN1DbeHmmwVOphk7jT+zp9eLDE=;
	b=SVektzD6k1P2l+jtjmrux+E254Cy5zPi3vqjYnMMsmlGIzS9n1EqxcLjVIwEy3Ez
	ByiAAPiIgrZl7TxZyKm2BYeExeL1E9ECl/gfOWcUfOd+GtIZZUKuzBEi+BQHFrD7WNA
	//jMtp1QDcUY0tYIuYFa1gkBoR+cQkaBBXTLEB7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2295f34-166a6e96-1483-4737-a607-9c2b1edfdeef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1aeed881525a6909fb3985ba4124f514c0a2995d5fd61b4e5ed884d4428a898
Date: Mon, 23 May 2022 18:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653330239
