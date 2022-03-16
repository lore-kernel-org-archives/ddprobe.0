Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EE52F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647444384;
	h=To:Subject:From:Message-Id:Date;
	bh=ZoUuxdxwhvKdUNKGTollt0+06thKJoxRy2kM5c4eTnU=;
	b=cJEiyvho60vjtRUlm6RyvZxUM6LCQ+IO/J+VxK4fLMwUvyxpiw3/ughG3M6G4Zmh
	PvnI4ygW0XMIanPjwWogFzzBa5oNtkwjZuR7OS6xeMNOvDYxGrz/VfczcI8bf9t68XQ
	X2DaGxExopD5GlgWM+H87Y3lE04wUowH0OQtNIZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647444384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZoUuxdxwhvKdUNKGTollt0+06thKJoxRy2kM5c4eTnU=;
	b=Sl5Uixw4fouWnopeOlKDCVIWj4C+SKiU1ORCpgIstx81popqmehH3Eb4vS/f0Nas
	fq3sdMya03WFzi+3R3CcluIbOGpVZWMDPHYp3HxmvLPVhKsenYM/n1rmIgp439aRhBz
	TOmT88zUcvVk3Ncgrxm6nYikFZ5tERoTXcoKC7Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93565c13-aaf88736-4103-42c8-9652-d974431737e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd542d0cf507f42294e9831bf12aee024873cb6b08ce14936e55ed03f3ddb1b0
Date: Wed, 16 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647444384
