Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C28D52D
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93148C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668625254;
	bh=AjkCE9z/8LOOxQoZDNqXGu6kW7zHN7hRLJYsI+Een9M=;
	h=To:Subject:From:Date:From;
	b=uz/K9ca5DC4zV3T860BtvBrEqCj0mbYrV8+u2wRrfNQWkj775676Aa2IvmIzTmEYG
	 R8paRIOxjf/zciQBm60HM6zqhTHI2t/nkCp+Bf14R166zN1TSNywUhW9UbYEj5+XR5
	 3OvziK6du3vc2WdncX8gOybU12Otqse6cAs2/jO6ddqBmCJlQf3/OfFovvadXjF2fs
	 OUQWbhN9ZEbAK25zsEjxilWxsxc8h4NSUXXsT0mMs6y81K8FmSbpMq01LZeBWlZS11
	 dti5Q+BR90Z+41Fc6e+Xl30A4zAbeDCIoamfoh90Hd8u0ydoRb8CqOnX4RfHUxgKga
	 yydL27c9FthpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725B6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862525444.17667.4724438417567167232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acae5496cbcde752cbaf2ac836ff29f7949a378067c2b7bef8d724ea07b9143
Date: Wed, 16 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668625254
