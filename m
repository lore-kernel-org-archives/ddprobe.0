Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E732F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647516385;
	h=To:Subject:From:Message-Id:Date;
	bh=cBbnzbqncB6RCPWY3mV2yLt1pe5TsolTTpIXjkH9eE4=;
	b=YmqZEYuaEbFp/7m/sfODZ9AgEsL1NCeUiAivL2ruV4eN7Y+NSSkgeLmxm2+UZfmS
	lGNH8tAnW9kW/Hrh9nh+ervkyWNa4ZLIQrA4Pf0DVTTFBLC+6y7jvrgrbfIkKY30K9V
	+vIcM/J//yM8DHeRoyYKciBakImj5EeCit9cgUow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647516385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cBbnzbqncB6RCPWY3mV2yLt1pe5TsolTTpIXjkH9eE4=;
	b=W5rR+cAzgihQtbhAbRB1MgqDEJgEV0ayZhvXWlGxBNcr2YFoN0pYc3fjCsjTykjd
	8xahUTEnKu/O9KE+yEcpMbW77W/wNhxZKrmyIMo3tugU0ava5i+s4YZNXST/cKkWmTx
	+WRPafV8LY9MYGpWydD8q5dXgllGz8oh+eN+9ipM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97a0fe0e-95b4d8d8-0a27-4744-854d-875bf8309ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e636ad60f59dffa607d0740f1e5c976e82d8141fe71784c13ea4f82c5c41f4d
Date: Thu, 17 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647516384
