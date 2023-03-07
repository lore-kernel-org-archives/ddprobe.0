Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC3366
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 05:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A6C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 05:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678165745;
	bh=187Da6992bPnavWVQCsgY0kTU94V8NVlgKqR1PnZgps=;
	h=To:Subject:From:Date:From;
	b=LkItJNsfImlt5IXTPQK88sueL5cd8UexsmtwBQpq5k0rkmwcCDuUqXarjtf6sjm9k
	 c9uMi1wX1k9BUlCBy9XR3IyCaaTnAEOLfj2w/0jehYWepodVLrrompaOPTV/BlIqji
	 f4a5+CEquHlRgXTu/78GXi11byF3kDF5MXlV8VK7Y865YwqasrwGa0137+MOfAg7GN
	 oD48uBjWduQDnbFpE2p5b2/dciIGTgyuDZlCjI+f5fX1v8jK2gn7HHTKs9xg6f0nG5
	 AbhQ8py0Q2Qt4++K77lXoCqsnEn17Ta5OBLtumE3eWiPc/ayRzrXZopf0lWGlkXEPM
	 ltUc9W/eIZmvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCFC678DB
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 05:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167816574577.14871.6993781151030389205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee58d8e7d090ac3f4067b5b2349ec925bedb4862f5c48b7f1e3873468b31c9e0
Date: Tue, 07 Mar 2023 05:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678165745
