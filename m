Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBD67F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B124C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662933653;
	bh=bf2pyto+0+5/bOVn9djWgJJ2uOhJEKKEX0Z6KRdTa+c=;
	h=To:Subject:From:Date:From;
	b=bdHZ9ppY7BaCuWhdckDOfd2BoIatIU3kRa3KFa24egDhVlbXaJGpBV0gk82uKg217
	 UQH9p+VnZrQWzPt3An7T9Dxy7Xp+HhoNQQw9pFU0XPlDkMQ++BhztrCJ0ZAuJysO5z
	 uKyuxNk0he513jH8NdV2k56N7OiwxmUtYaHRpakHYs6EZdUvr3u0Nl4zCyBDRFSWEh
	 B82u+fBrxhnX2MDWA0zxQXgbtJekJbbArHP2nC54OAlnKOfa+llrKMXvjr1akMKo9l
	 C9chNBVBVv8d24U7Abtg1yCKS21TKneeKyBrLXF4bFleR6hW1jXtfye8qrAp0XGpzg
	 r4r9dmOzmyosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53112C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293365333.19140.14776815661453998634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c81fd79e498a02e1f599725614d9024319b733860b4fc685366eb5186045b86
Date: Sun, 11 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662933653
