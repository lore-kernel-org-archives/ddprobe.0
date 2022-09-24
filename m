Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD9C193
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A138C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663994453;
	bh=SZHan132cKqk1wE+inxZEgev91w5NpiMjEkAB4kMV60=;
	h=To:Subject:From:Date:From;
	b=L2yk5NYZ/7FpxwBjSuIPWSsQgjgbCglU8ANNjZuAgdyaPqQCl5wIf06bZ72vADao1
	 0RhaQYR3AelGq8M+4Z1W+OvF5la0WTIUGpcTigyCFWSy1+llylIOf8nuPOMIYiBgF+
	 kLt0pzmJCw4xCvkqsTnMDT8wCr8bler5fqyBhb5hOqt7MwfV7T7+HZ1eHhjZcXtC6h
	 0O4k1JJDEm1jTb9+vP8Fb4FDUjDUw+5TC8Ku3y/tf9crakfrnlWon6uuIVzEj/r49K
	 bYwn9C+riGWqCTtLxjnRVk/Y0eWB9HyR7KNFoctoPK6XTuMlls4RjPFhAMXHcrHw+a
	 U95b9WRuVEDaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A5AC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399445331.26707.12523450461158567927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8adff662e36b65175675c1359986be8529dfb19534a63cc802904d6bb5bd08
Date: Sat, 24 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663994453
