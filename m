Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46F917CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8680DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671793887;
	bh=Ip1mvgyI95RzpwWLCyBJFEzZa3tLAHuLYKbABVbCtuQ=;
	h=To:Subject:From:Date:From;
	b=Qn/dMsvTgqTKV7NGaCZBYHqBY0e4o9YWS/8/4valpJk1hqHmphi+EAHj1sZ4//Yym
	 vROLokZ7ANlIYuvqLYjLpodfn2+WxFtDqxJ7kkENT8bOeu0Rv9gcw2E08kKDpuM51D
	 20P9IYB+3iCmq77HKUq1NWjjsXixaiXUFbGNJOTZWE8Vo/Q1TLbq81TfThwkynLg4Y
	 dPaG2LRCo0QaXb6M85BGsF1abtD1jPSFWYWJUE/Npoa4DEmeafrSUCk0SvKxA6vtAz
	 Tswr4CD0R76XM1uNCRTr/7Ota8Taj+ZeC9dtll8GMY0MYJRShJtLy5NPcj16KyoDBy
	 cH+VNVh6xIHvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65564C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179388740.3530.15236155961320662713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6e7a11cb409e3e3b9693aff195fcf289a5d597957035b280262eb857a7c9e9
Date: Fri, 23 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671793887
