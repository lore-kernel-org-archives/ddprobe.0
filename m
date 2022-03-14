Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD3E1B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647268584;
	h=To:Subject:From:Message-Id:Date;
	bh=QILxKI+m55VzZ8Xt9cWZCkhItuhcoAwkfUEu98uFHco=;
	b=O8oeJMGsTZno6rwzUD1N2mQLZX/7f64r/kCuOTZ5iojBslzOsw3IjxjHATkBHYYF
	1zvynKPdcJSJC7VFgO67pwLyNBa0fIAv0pZA5tTqjtzWiM3O7DlsYMTwIDEIAx6ULV+
	k319bhDSvuKUUqFCqU35iTH23BjSgnhBPrnhCqdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647268584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QILxKI+m55VzZ8Xt9cWZCkhItuhcoAwkfUEu98uFHco=;
	b=YxZPddkW+rR6iYN2J5hJwtn6HSrI1rsk5IFrQLhv5mEBNwGzi0rsxt39rObftOgM
	pR8UlFauiEKjiF98xy5zPZu2stwwiXeiGPsV5ruCWq+rWRReoYKJ5Js3WbsjXchjG+J
	k0JR65nijN5eij7iXk+8TJMocH77EXW//q1C+ZV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88dbdd76-7fa7e134-218e-4f04-9d30-fe5b8d90352c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4446a609ae83739d0289ea088a2eac0c8261732454db29c9132ccd119cb4a4d2
Date: Mon, 14 Mar 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647268584
