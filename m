Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255F63D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98377C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673708487;
	bh=sZN/C3ake8TCpO3D9td2FvLA0xdpSstyopVa8q31U6Q=;
	h=To:Subject:From:Date:From;
	b=qQkvnqKMSLcEGujMQVdsOmCGXX6Lc2e0p27kDUcy35gFzfdW++QZ/r2LN/EvYXJQn
	 kj22LTIyNVEPPhObnqcQynkegecfYckENDXVlW7eoiZfPA3sjxIQHKxcNg//eSq9Ul
	 WHg1q2SYUnpHhmhI5+dnaBgOVviJHbPwDiO/8q2FlQByBX+rtg9ph05CFeTO/YfZQA
	 WCFbdvO2xQWOqn2kNA4G6ilddM6XrwQbZ4sL7B33jEwBdpYSpRVR0XrSc4dqdkPTt3
	 d2qDwDJDpdFcJJKwQjGKo1TA4qG9UKBXHirIvXUsGOFe7cr5AV47lguzD18wBM7edm
	 PqRjFVfBtgp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76737C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370848745.29263.5953833353449312132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc57913e758d6c2fd3eeeae2cc2646537e26d2a8e8fed3336dffa1d5f99a4f1
Date: Sat, 14 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673708487
