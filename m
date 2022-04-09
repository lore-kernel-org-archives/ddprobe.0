Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DCE7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649481418;
	h=To:Subject:From:Message-Id:Date;
	bh=zeqJYs/RlCBXNqRdkP3dBeuXycirk/jr82cei71UT30=;
	b=LX1maD95ANyhVdWGHUqgZ+V0UdrPNnxiRxVmwMPBUaWu50aGvapfaelEz4zV5NBf
	06JiPhcWWfyNrKMPa1dQGb6BTjT7plXblAImrs26OQRHjJnoirbB7nURJUiKHrMOV0E
	220UAwX9GNNScOJbUiLipa+Axk6euhQQY9/df3qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649481418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zeqJYs/RlCBXNqRdkP3dBeuXycirk/jr82cei71UT30=;
	b=Y8BtnYaaYWUZGPW3AgMfWihZBftCPCTdOaUW62MzZKZQZNpfyq3EP98C5wxn7+3V
	EQpPnhCq1Uo1Vm/yubAcAh9ABrDeYCKzIL9TcRJQLrqGWdTtsHNAW2mpy8HfN9aHpL0
	1Cr9jw5ZTWWb7pEL+xGEt3CRF8Z3i4OcbOW5Ks0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cc1060c-ea731804-6b05-4762-9ff2-4e5ebaa1ebb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9aa048a8d137d793771db72b43b478142bb720d8a8d8ebd943615ed42e1c0a2
Date: Sat, 9 Apr 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649481418
