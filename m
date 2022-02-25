Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49B67A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645778785;
	h=To:Subject:From:Message-Id:Date;
	bh=Kc8R7DCxoo+Yrb3c0NKhvqaPwp5YZkPwmo6iZxIp8XU=;
	b=kbmGSE3vJXLvT/in+u2XU127unJKLaSwoUOc6hdXByNsFdcvf52PbemQ2B7dpJc4
	pap7J4aoKg1mOSYvI2rXQ2I6wDU6Gv76qnuXn9IvGNZAiy5QP2gCuJjK8c6QPPAHLAa
	PR+iCvPqTbCE6M5FvibkpTplEDHiWlMxaap43ap8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645778785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kc8R7DCxoo+Yrb3c0NKhvqaPwp5YZkPwmo6iZxIp8XU=;
	b=J/nRFC94+DS5U9+0qHeG2QgqHT/xytQ2+RAqRj1cRLOfpSyvSbmbfBmNCm9rDypb
	aKlkygm3fkDifXywHYl4SW6CB+PKPHsliP0Oo+tK7nQ3gQdm5CekbmOdJ1XNuQTIzDK
	C+y3olj8xnu8ZeQhh43BbY9xbF2UNM6wl7lfiwjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f300f5202-8003daed-8047-4d35-8115-bd5d30688577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 931886598a5c6fea3ddbdb0f38c469c439d4f797573df771bd4596f843c2d6b8
Date: Fri, 25 Feb 2022 08:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645778784
