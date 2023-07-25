Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC6625140
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0112C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690306928;
	bh=hkEzsu9TgHltA3F2whNWjAGvm9+nZE9WWj/4axUFlVM=;
	h=To:Subject:From:Date:From;
	b=KCwqJoYunir0bLVw+XKqEyXf7XTel7UwGGaImbf+IlkVyjdgEd+EPWP4dkKPIyjbg
	 AhEkc66eo7BostShuZDHkNg6U0VEHdN9hLmzfOsTWXArrFwLOpfg8mtKnHBFyrXw5B
	 uFC6yg2c/AvYVXKMCXpc1rloolMlv3zwb3Xc/mN11Zd1vjGzqejobj4ltHC7df/E0c
	 G7trqu8AR4oomGO4jJ9TNYLSi2LsR4yHylLG39aPErsMnaZ/MLdcesPZgf4HU6MqbF
	 fKQO/wA+S9W9Jw8LQJG3pYMaqN+4p4lrLwzYwkJHqreuA1xahqTQzldTtsIRUKucHS
	 jfzoDHG1GFBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD10FC001DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169030692876.10789.11894267752844563323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81902b32cc413d2cda6eb1f1553f9aa9d35fbd78c8aa3bb73fb95582805e2517
Date: Tue, 25 Jul 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690306928
