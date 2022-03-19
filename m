Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1B817F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647668484;
	h=To:Subject:From:Message-Id:Date;
	bh=v+H5ILHg76tYRxAA/EcBk6nk+o2OPC8hZOWgEYfnjEY=;
	b=TQFxv6OTmVRFQNqmo3kxkNgsDrZGo8Iyt2aEG6ZjAqCa/zuo49Hrni5AaqylIodF
	d9p8v1MrwWgzuIjeWA7mOrhpUAZpLfBItSVEmtURywoxjkad3PKpSqUrupFha5VtDSV
	EbfKk+xvcMJ9aiVeVFzTUpLCSQqMUGjkl9nLShgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647668484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v+H5ILHg76tYRxAA/EcBk6nk+o2OPC8hZOWgEYfnjEY=;
	b=VoW1fVqTGJ8tDcrNAjZj+y5BrEHN4T07ekyeA1ROh3F2pq5wjb7Dt1RMVdOqUF0o
	asDeSuEE2GhfYPPbnlUu2laq3tPfyFURh1ZHMS1F+DkQ+myduLqpyNw1T5kXnMhla8H
	stTNXUMfPd/WHyNKNUrGcrCf8AIEZsd9MC1nva3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0b1daa2-d447e819-7dbe-4d69-8ce9-6a5ccbb6aee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfac6104fbcb8636c391b5de2c948afb2139c03901840af091be0d089b0ec704
Date: Sat, 19 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647668484
