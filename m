Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778A02C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660914052;
	h=To:Subject:From:Message-Id:Date;
	bh=vAHy9zEtNHzBjm7FCj8GRGsdNWuez0tsWV5fXX2TOt4=;
	b=h+uZgeNMX1WY0YuPV3dur050LUSyzjgTCMAOiNaiR7f2G+RsMWYjtmj6v0xg+YVJ
	meV6VhUdNwZgjQIa2SKLLzHNe4N8wQjMaa47/uyWvk6HrgsJSHMwdaxXnmdeLZgUADc
	gwQug4Yv8wXunAXoLhKqSYhKhKfUAuIXlM0joJLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660914052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vAHy9zEtNHzBjm7FCj8GRGsdNWuez0tsWV5fXX2TOt4=;
	b=QXAO5VjyNzvdkMOdumXEhUvmcmy3sv+tijE4qOvFUKUHLt6mA3BPDe0fmm+S55+m
	rQQ+bZ/JVNRbePIzJmDK/dYfnDKzPpVF+4Sit/Mldv2MYzbOq/yx8XUapPfJYqCxzG8
	JxdLpDZB6Im3Ndz6YfohH9HZdabWSJEGKxu+6QF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6312dbf-b4e5a292-9b7d-45fa-8ba6-0da722cdcd0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd5f2e70f09b65fe6766093b62f0c4185859c03da09de169caff04f5d41867fb
Date: Fri, 19 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660914052
