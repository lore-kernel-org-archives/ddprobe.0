Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E41855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656668812;
	h=To:Subject:From:Message-Id:Date;
	bh=7BtT+5gQI8Gk5yf7kWFL5HxWqmYbvFCN74XmIAAODXM=;
	b=en1TeyoeSCYVqzSwySys02lPGBFNAZkbU00r1qKdPTJ/QNbEYj6rQ98tgIHzfR9A
	ZvJ93lciRG1NOBpaEjCjbqTmM/p5TyQ4rD/kxdcYw5T6ZRhx31mHMKkpfeSOjK+S4u3
	YYOCkQODHnO9GYbbdrhu/P/gJFlK78KC0qCAR8xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656668812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7BtT+5gQI8Gk5yf7kWFL5HxWqmYbvFCN74XmIAAODXM=;
	b=Wh/4JCLDP2Wi2ir+xk0E+cwPevZFfcS6dkjvdAN9ZZYUkRflVDLj01c5hcqp5n5U
	2x6G1GI3aaiP6dzfPNYiVAKKWjQTilEWLF2QP2SqTDmyVamlurQd2ZeEJujGCDVu0yk
	bQP0VQlUC4rZW5XtuW0udeABhYNIck6niotWXmBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b927f414-5e05aedb-daa4-4942-8226-3af0f07d6291-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f1658642cfb56fe9003daade963f631e032d8798eab60135d63a5c6e0c0ca0
Date: Fri, 1 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656668812
