Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872517C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 03:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648611778;
	h=To:Subject:From:Message-Id:Date;
	bh=bo61NSHsUEFH5Ku+e3BeYZnkXAXoHsVIz0BUEIvmkqA=;
	b=VXPX5zTP9MgpTm/9pUCoR3u4BTOvoka1B0Y+R405HDVC1GN5E0RAhlwcPJPjKRaI
	wQxWz57JggpELNEIM/RkIYLI2Xj6WISVcR6xiYMqr9WxbjYbC89u1Z7pzneKefC/4WK
	vQ1tlzG0EM35dHRNUo+S4g9be4RD5iVJ274W9l68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648611778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bo61NSHsUEFH5Ku+e3BeYZnkXAXoHsVIz0BUEIvmkqA=;
	b=fVVq4MrQ5ZMUUZJiN4Qkz4D+6bH5v07oyD8SHX8vCiHexsV7I2GkkDcaZzdpRR7k
	q42oeCzXrS+nq0T0MQW6BVX4mmw7p5LNitH2jXxC1iuhmYfx+6xRzuFNLgtDToaD6y8
	m0IPNFE3Tjcfl5xkMmHsWpX2+n9+WYWadIng7lOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8eb5ecd-85670b6e-42a8-4888-b123-c05c0e75bed1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43fd2a53cd33928e6f6320ecaceb9d64f8b39931e3cccc07afad836502e805d3
Date: Wed, 30 Mar 2022 03:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648611778
