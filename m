Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841587469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647297084;
	h=To:Subject:From:Message-Id:Date;
	bh=m3zwWKrPUXz3fN/k297Gk4si9VONIuKeJKEFpbAMXHI=;
	b=ZCGJCdhqwq4Qzb46AZ2cscnUUl3oXbK57XEuHHoRjkQ5qimUNFaeNvJ7wd42mTnN
	6LcZiSigZwGvgua1n8adCu9UbBqzFnv4n+PPSqogR+ipL+A6UKrLBCz7+RwCb3cc1as
	Qq85Sma2BAOvyTVzj1HbdLu+962Z9nwHCpHqqtco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647297084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3zwWKrPUXz3fN/k297Gk4si9VONIuKeJKEFpbAMXHI=;
	b=j2IPDJ3St6hHkSa09vozI6Hm2ngiR/kOUmVXf5dGYusPqjvHCbLkbOGh+JVkVpOD
	LlBX4mWeziTH+xIemzm/0HgINeZ9regVfjZN9C28G04Vexz9cmB3KD4E9rGCID+k6ro
	5hHkDY111q/47h0YQVPHwXVmwy3Ou8tKUwBd4KEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a8ebd59-388e601c-f088-4a89-b793-5636facd38d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cb198af37cc74e7060cf16e30fe826e0a01542bd21ce5cd6182b0021281acbf
Date: Mon, 14 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647297084
