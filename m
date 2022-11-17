Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD6717E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF23C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668672054;
	bh=CQIKQu8ht5dBflT0w+2wtOzpYf4wX4caTPgfDEH0vLs=;
	h=To:Subject:From:Date:From;
	b=J9eRqstS65Ddk5xyX5FeahtVMjR0lSV6MGSO/VF6hA8gI8jlqFXO2HFyROc9b/yur
	 Y9FgrnH650GEQhHO6sSNyo10Ka3nGIkPRwRrgEoOhPfHFD/+ig2HFTOEUBsfABqgWh
	 bYSxl93gHmdf2wuGMXIBclMd40n6GrGlNsJVZqRiVIdCuMGgOeqy9tD02hLhXqhAID
	 l6o/rukeO9QVEGjvYa8UCQhUp51UX7smHCYCRVNJcgthenFoAupTjc99S5UO5Gr0TM
	 h+GOpKZjl7JoydSc9mFUXqoeU2XeKUSazUcCcZ4kibMHUOZGrmu3zEJN5cOOxS1scg
	 GM4rXelrTJJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A56C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867205444.21614.6116089636598911041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75da4b6fa78988d6113b77eb885caa1d48eecdbcdc9e8c9cb8f127f35c4a20c
Date: Thu, 17 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668672054
