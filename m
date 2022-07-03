Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEB91FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656836212;
	h=To:Subject:From:Message-Id:Date;
	bh=GchXHTrGTyL3NFYeBvGavF/ccgRWIX4iuQZQTG/c06E=;
	b=SNJ+9QAZZrOyn7KMun5/qa3reWEbsJ13TcNknJoNQhvIgNPRNd8+6xjR0TH8iJwB
	YbQZbdbORNYx02MhUkmX1uvl3ZFCABkWWu6ujUGxaWOvbZmUZn7GT7dfx/kocgycCgg
	e/ErSQOKlXOkNzBax0ardCIg9qX4HgwzTarc8ImQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656836212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GchXHTrGTyL3NFYeBvGavF/ccgRWIX4iuQZQTG/c06E=;
	b=MS6fE65QRJ21GUs2MSLQ0hnIaV3wnams8jcaUwQboieX2LSl/ukyixZWuhEme3vv
	YYP/mga22jlCWJ2yCIwKJfTgOalrdz2xpHWgAA9gXdSXy8TVuKaZa9LIpIllJwcmpnk
	cQiVdrx5G1uguF1eDmwRAZq711QbgQsp7MgppQYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c322465f-1c5815cb-2d21-41a0-bcac-85b7254d307e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18ad9e027ab97657adf9f693a36013ca89fd4461b5c2491f8b3926f25cf81062
Date: Sun, 3 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656836212
