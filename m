Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473CB7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D8FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678530305;
	bh=bbIwCa6IGnQT3LtssuW7uArod2KwltFlgb9GxzFDr6M=;
	h=To:Subject:From:Date:From;
	b=XoUfUviopfWuO3WjMxZ0eEKfcVwxHfH2qtMTisW2jOAPxYY/Dw1Uet7ksRnG9v7aU
	 HMVUtJDVcad/Kb4QGamnKaPUVsZe6smU9HnW6qx2xMWV6Mh3ROyzjPT3Y8/RWNhbwB
	 jkdu0kYFBM6bPW71WgT/+P1eGLIM/VEA64E23ClGAxgSN5Sw1uldGUreMCeriEmV/F
	 0QLCeW4q3mGdGVMtKf8jCtUEZhzUBUoYuRH5p3M8s5fjrced2zOiJ47Rt6YL1CLnhW
	 sCT3hrJY1FCCY/yp83CpvKQC75lKdphPXFHAiQoClfc6Nor4wTQd5grNOc8TYsWPkB
	 J6bQm+DbvsTOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C484CC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167853030579.31559.15364440150569115435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d4c98a56a8b426fa309f1b07d3daff297cec7ecfd31689d38d931416031be8
Date: Sat, 11 Mar 2023 10:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678530305
