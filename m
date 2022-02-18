Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B3223202
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645223185;
	h=To:Subject:From:Message-Id:Date;
	bh=mvcXKEIs7rSnMX4UItLmtcuFQYcsnNEHRpnLd8H8gWg=;
	b=g5zMASxkbvn/pqkDsJqhya0oc91k//T1yxCfbQtohv8+gj0S5G5B7cMWzhBjSGpo
	b+3M5hE9TkMIJc2+hWFsTcDCv1u4ylBazhOxfR6zOHY+Dr8Jt0T/X/7FSYBVodOIiLq
	4gle8hunI4vP2kxp1h6aOqr92fGryaPGQ7OAb+nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645223185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mvcXKEIs7rSnMX4UItLmtcuFQYcsnNEHRpnLd8H8gWg=;
	b=jze+QZuyDCsyl01MC5CaoOgSh32ZzM97cneV9wRGrfAhsi0NrS5YA1KhAtUON3r1
	I9+R1BbfgFFw9VZG6T+sMo6cZrOQiksosW8XT6EXxyHvKtRhzVpMY+fYCqrMX4hWJg7
	cdXvTGS4dt73mUS6TmPqcUHRYupdMlCXCyswjE6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ef1899e-3d854847-c81f-46da-9fa8-0dac6fe50c02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e4c88aa6caf95d9f53ad5105e3b208f9325c3893416b543007bec2420f52054
Date: Fri, 18 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645223184
