Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17BE1C2B
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EAAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670763687;
	bh=vtzng79L1EoVtRXP6q6adCTZbdPqnMVSlz4T4oz0QpU=;
	h=To:Subject:From:Date:From;
	b=Ru77FA+R+h2lv2IK1oGwcORPyRCi7GiU0FsrM4Gmyo32Fy3A9fBJUnOwYTbi86SDj
	 Z0rnoMr7l9J9lDU4E2/+RNpsvIebaic1UAthYOApRd6LjdV1jiVZiBHz+wBFNlh8+r
	 Ny5tagXQNgBDvoc+BQHZaI/E5dwKCeWOGLBPwvREIfUddEuHMTug8WOLTX8Zz9roAv
	 7u7YZ4BLIEyjQyePYGOjJS2tjRr9B2Hu7fFPTOm9AAuuNTHB7x5sBHLtOg2DvFlqk/
	 w7Jz4PZEZT3uwcmrpSFjxZb0RtIxzKfrE1o207h/xNE2lXLCAh2ypmzkBHN3DjE5BD
	 j8tYNqutbKMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B06CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076368739.21202.15594333726505276995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166ba0944396b94d49e8a513514d361f641f331f7170c8340454047cb1550483
Date: Sun, 11 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670763687
