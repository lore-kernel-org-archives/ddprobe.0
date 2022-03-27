Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E1C15A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 07:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648366918;
	h=To:Subject:From:Message-Id:Date;
	bh=xN8jp4vDwV4dp/8iwFc9DnyTkE+JR8CGcL/7QtpfQBE=;
	b=i33qa8ry+bjGL8V6yG4rlqm53s1KHI2zf+PW7/qGo6uesMIHmKnaQTZ6K1GBg978
	hQjrEZC5P8TiV9UWDSxlkRm9Uhcjgg6eem3ADloaL3SC2iGfGLU3TKTgt/7ZVMc8c1f
	03hKSNezT2+WqeBUU1ZVBSewWAsefxtMO6iatGlk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648366918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xN8jp4vDwV4dp/8iwFc9DnyTkE+JR8CGcL/7QtpfQBE=;
	b=J/v4y9iJM17vqHAEVMDjiNnZv/WRnxcbIM+3gQnniGd3r0hhnzX3wPlPIKadGLHx
	PoEi+Zw9I+M0IEXYk69TcjpJXOtnQe1mN4N2X0z2sQnlEzjQxYyLXKq+yzx7p+Ojo23
	DP7JMNDAvSJje9aCWd/suenhFWkfr4wd5Y6wKKsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca531a68-4ba5a6f7-8d50-4a61-8859-e448f461dd02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e19ce12bb845bb92887b9c87516790eb713c8c947450523efafafd17c13bb486
Date: Sun, 27 Mar 2022 07:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648366918
