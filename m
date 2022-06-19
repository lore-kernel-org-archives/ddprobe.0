Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075137B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 09:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655631299;
	h=To:Subject:From:Message-Id:Date;
	bh=/Xe1lZV6pCOt5g46sf6taqnpksVRbAqlEnlZTQfjPG8=;
	b=fAqhC+MpLfHuEsjpFUz9pz5GAOrnoGAud4JC/iM3szEqwsvo8HvWWMfSzBmizTxA
	46HmPyqtZK9RsA9kDX/1MSn8iAypYA8oh9Y2KeCuWY9qEX0lymDAkRpHVd2Pucwz+VT
	xP2wUU/AIPvzfCElfozo45tGm42Vdo5tgRtegV8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655631299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Xe1lZV6pCOt5g46sf6taqnpksVRbAqlEnlZTQfjPG8=;
	b=TNq7AaGbux0XNPNgYDOXympa7uJGtadAGGARRigvb86wKYhuiglmas9l/r/TwHaP
	EXhOEhfB5mthvc1IW2WN/avODx1Hs97h5xH9AR3+JFI1XNrwMlVo8AnDy6d3YKv4xaI
	eyBMmlkKrsrEJqptM46MStSzvwxH7cbIHdT7B6iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b50c29a-de036bf3-9d55-4e36-b5c0-115aad1ca951-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e5c31be96d43cbf7b99d8145e8ebb09e4e3e02da054ff72a5e351c510b9529
Date: Sun, 19 Jun 2022 09:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655631298
