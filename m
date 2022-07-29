Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7B04400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659090052;
	h=To:Subject:From:Message-Id:Date;
	bh=KuN2FMWHDOYSYnA5PQFDtejvYfGc3pyvNDdLvadBQBY=;
	b=EqeJ+vrS432lAQlIDG66IKPPIU2YRENsGs+nJXob9/HV9fbFvlDBjuLHzrqwOXUI
	J4p3spdZFxNmJNCQCp+53PVTEZm7ky6iG5rPbObwJzPJFe6gji3iMzCFzOv6QqtJp6S
	CiPljh+sSZ2zmqBAVdEAyHV/FLf96KogkjhLkTKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659090052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KuN2FMWHDOYSYnA5PQFDtejvYfGc3pyvNDdLvadBQBY=;
	b=NI7w5Ezmg8WbA9wtiEhyB5Tc48zHhX+b3NEVUOt02uUYziGTDK1pWsK86yn8I1J/
	l+n1m2NyWc+BAgq+Oki0TjuZOIia9gYtkn6WpeCuX1Jr8v6RYkwUBERfJDpF7lzsKVt
	yXh/nT+CSc1NFYtTbKAcKd19uJnzNf/VYVPpG/ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182497925a9-320595ff-4268-4b63-98e8-0da21f0c33a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9dd7015a4e9560c671c5f8c193ce362ecd2138d87631d9cf0cc0aa70013bbe3
Date: Fri, 29 Jul 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659090052
