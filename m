Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C8D376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCD2C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670377854;
	bh=qq1qYngBMx9SEkN8sgQQ2W3btZLxZbYEYx0hJV5cBZo=;
	h=To:Subject:From:Date:From;
	b=YObp1CvvE0KfRZ1Oue7fEnQtNA9qtKdiSYr/eaWnCXtVUOQux236QsAYOYSuYpdEE
	 ujL75Sy1ZgVEIF7LAysP4csfwl+bznXpwUFHwJdL9CQG3l/GtaowUo/2KenWzTXo5y
	 dVcxcSpSqIrmgtLHEkI2GIhbVpA6efuMaC+7g4uOxNxLP9DvDSWI3e9k47JFHQ3OKA
	 eCXT/FZ3bMiyCPBqTQgEOSEdu2ZTzL1FJ2M5rf0bDGkkdZSfFv4UaTzaHQGr0OBWjc
	 adsjQitw3RmJw/83T3JUhw1iCwm5MZh36C+V55qmsc6k5gRPkVJsWkHs1liliyfj01
	 6xYPJyVbmKESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5813FC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037785435.6304.17403974290142923508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bef19bdd234f915ea1f8fdc5c9aecc99acf9640a5a84fc84bdffc0366bca6e0
Date: Wed, 07 Dec 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670377854
