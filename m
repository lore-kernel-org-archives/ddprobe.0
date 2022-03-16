Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EF510EE
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647388885;
	h=To:Subject:From:Message-Id:Date;
	bh=tNIwpgAPRdaoszLQ1EplwNfrp7PM37S4FOyZNG7gCIw=;
	b=D+I3FuTintRiW32evzlgjE+6V5yoLXWz6hPewPP9UcL0idqYLeZkp7PBl74mL85S
	Tcjs8H7jxsjtF5drLJK6BLDh8swMXn2QK+5H9Jn8J1AzknLXb8hd68XWBHONmJqWUm9
	4WTM9g138PmjoMBa+5HBzBnp858X5duztVPh0gYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647388885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tNIwpgAPRdaoszLQ1EplwNfrp7PM37S4FOyZNG7gCIw=;
	b=TUe4A9TKQ8otonnXvlBpRqDTjy9KGd2EWMWj3SwYoEPkBzkHNxHYNXXYB6KC5j3m
	bXKS5UWDPz6+TBlWZtMSCmYn7s3pljmIR+14cb1MJnV8RZXZKPNPfHK4mgHnLGIrbEu
	pB75Ce8MzqqzMjkbxNyTJEuj1TH79XshgbYIk3LQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90077f22-a008c972-cc3a-442b-8f30-218e35ae7f57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34fe0416807b4d1dfe3a2e588c6e8ab88f4ea9ea8e61cf8762523111edc8a7f2
Date: Wed, 16 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647388884
