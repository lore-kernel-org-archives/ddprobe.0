Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A412C9C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647865884;
	h=To:Subject:From:Message-Id:Date;
	bh=w8plinvhvl9wqtLNG4tO636Ukw0QO0xfYSbdWHo7ais=;
	b=Mff+FdKmh75KjrGBVzzcP8fDoRK1kItFYgl4+22PknMR7C8DMwnLOeLP/VSKVVhS
	/30cYfB/7nh1VDiBYtx+fUu7i1x8JRb7KK6cTjT2LNU6/noCYhsjJxWPxqBCAYDs4Eh
	3QStA41Zi3+QaQtl8ZezRywQNaSwE3q5NetBXySM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647865884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w8plinvhvl9wqtLNG4tO636Ukw0QO0xfYSbdWHo7ais=;
	b=WnHpWlbshusODIr9KQNtBgv1AEA9CiGKWgK1utCJM69lw7Wlp/9aSU7v3BZmAoPC
	b7oxakSeF94fQgwpZisM3A9PIYyc9Qdo0Hhpg8OhuXwvvwmUMqiHmJ0PL5hdFcwWWSU
	QNW+S6wVm7+XPaM5z5mNGMYfBk0BT9QiCYZ7FtcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac75f03e-9e8d42b8-67ce-4640-9cc2-9a217a2f2cda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13632fd96562fa43256d3fc77bdb968aebce2b7f215f19a2e1da320e1329016
Date: Mon, 21 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647865884
