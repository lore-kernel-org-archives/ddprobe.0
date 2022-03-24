Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18127E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648080778;
	h=To:Subject:From:Message-Id:Date;
	bh=AURC6YtmZhXm6Itns8hWrpk5mgOdHMaMnBvEsKY+mKM=;
	b=f2g3QqWxc0Kqc/LQ1Z70hI4VyuuQTRdgzKZ8Lhc3mG5r7PZvOPeCajXe9i8krXsi
	HJ6SEEIpAdlijwggt1+DG19O0AP7dm30bd0VyF8LGmlqBOgcxcTGlvuEz4AnTqyp/nK
	zwXxKpUwpecfj9kWdY0MtlRKvEm/K9j9JCz2ZM6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648080778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AURC6YtmZhXm6Itns8hWrpk5mgOdHMaMnBvEsKY+mKM=;
	b=jTCjiNc9jcQtYkL4VJxpEXzBRGUS9w6zNHrPZUzxyS8qK+54vO5Eat6FAxmQ0wUe
	92XG+By5YREHzSAlWAN1vZKwvbvASmYTtuZwTBplOhjzVdIvqOrPzwojkyNDKRBftvi
	m1O/Mnp5Zl7TKIV8HUYTvT29Inyjyv8L3gWmNo5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb944f3f7-38a385d4-0f9a-427d-aa26-713446c6ae75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8f9edf90d9e13a9a27bd461e8e925c4256ddd6d5a62020e5d587d925a14cb78
Date: Thu, 24 Mar 2022 00:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648080778
