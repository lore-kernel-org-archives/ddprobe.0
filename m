Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAAD6FD2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B4DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681319525;
	bh=yZG4OB3iaHIeIHWhxO+Qha3HZxcORIfUj9mwjfmBm24=;
	h=To:Subject:From:Date:From;
	b=tzy8GQFk5L9qMkGG8agTQ14dUmo1kIJwr+QXkgaVj4+ik+2z/OQfPH04p4uENU1fk
	 uPbCjDkgB6/SCgRrLUqpL44zZ23ntFzSbQPaRjcctGniDxD+uWLF7lEHc6Eg0LRJ02
	 WK0qhH3xDP2nVeMijbHfAHXck4R3x6P6kvplrUk77pXCKTS1BhEN95SqthhNFZYlCs
	 KBDFZRB7WYBskEMgSeYi5apnDfOrqFrc/hxibItkVQG8fB4XYnTjNmuidf0ncVHZdM
	 4iBhkMHbPLUC1I2EEkbV3grG7BImYR/arK3kVzzUa3wq2cVgWN9zW3Xo7aPJ0q1iiQ
	 y3+U3a63cDtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC71EC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168131952576.2341.86229790778427170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3da9edb65224dc57ed5a410e39336ad2bc3355a2b9e2c257f0cce845b5ead7
Date: Wed, 12 Apr 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681319525
