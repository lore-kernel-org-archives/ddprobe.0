Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E23B28FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656326812;
	h=To:Subject:From:Message-Id:Date;
	bh=wvNj5xkJc+S3a2Jylcy4k1s40MaafqyyoEhIl9ogzpQ=;
	b=DWOY4VhBk9w1iuBfrrGJbrYi586WmMQp3D3yRj0HrqWH4hPf6Ytz/E9gi28eS7mB
	G7Rl/SnwGxnyV0hkIJQJAcE1dp8HXzPfsYmvV1n3MDn8I+YjLZT8SNFAt3bg2O8WCjw
	pmHMshgO6JrScqDAHtKiQsiKMRhrMMRLS2BlfQEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656326812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wvNj5xkJc+S3a2Jylcy4k1s40MaafqyyoEhIl9ogzpQ=;
	b=V76yVejVNCV4ipTk0oPiL9t0ZkqLooxsarXjGmWsxOqfrTY/nmTIhO2gByJvfOLU
	GlcS0/t+P2riKeIoN/KXmDVFwVGP5bupI3iKAru+fw+qeBR0hvoYHv6wfvc/b2JKeIq
	+paHUEg+a5p3/plurlUacWgz+BJAFuN1yruk9hO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4c57279-b9160bbf-cc61-4c7c-bf90-c14abc8412f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2060c0572f22cd0aa84be3ad21fa0a46505b0f06f50eabd4c0aef55a0aaefe81
Date: Mon, 27 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656326812
