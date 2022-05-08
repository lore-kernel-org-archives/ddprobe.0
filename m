Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB74D7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652041738;
	h=To:Subject:From:Message-Id:Date;
	bh=7AW8e7BCQMPi2SBq6+MSGIBRCHmXe3SPC6QLkmFe620=;
	b=b74cPHGzIyZPwfCyV/djNAUiC1CjBhYFBwS/wAbSLKJsS4yd4FJKs6snq2fNbv3F
	IBOO9IfhFno6RUSpYt2OH6HRSgpqc18o7hRQs4r6N+LKAo8fP0SWwVt7malsHjQIYAM
	pYjIMY7DHHT9hB/pBHrDGgMqEx23zwktyxGbwEPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652041738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7AW8e7BCQMPi2SBq6+MSGIBRCHmXe3SPC6QLkmFe620=;
	b=GC02zoVHgD1ID/Weo1OoyCmZADbG6siI06xqzFmB5DxdFY3Ig1nz3gGyghwH5F+7
	nt1H1QnKo3ydcdd14c3inYZoS5/xNh8C4gZ2pAye7m6ofCKe6emhFxl8Z3jLb+2nxvW
	4my3fAYGGArJvyAjjKvm+TLtD75TyhdepfAu+vyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a55c681d-c38469cc-61bb-4c92-97c8-2e27a4809e09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bd205c795b143b3a61bc16adb1033caf6650c052109889dbd3e005eae4712fc
Date: Sun, 8 May 2022 20:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652041738
