Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE2628E2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 12:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96E3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 12:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677326705;
	bh=307lMR2hjkuSnLhnffc3QLPt+0Dx6HH7XlWQICrM1Hs=;
	h=To:Subject:From:Date:From;
	b=WG+8lP+CSqCT/AVdIE60NmN06qKi7B3S7CwCV9wcguKwIKebXgm37iPRCfU+8A6b9
	 fxoRyvSGL2lmwOSWi3bYBUhdqFv8trzj0/pxNTaW6ACW+ioADrOZFBc7ezffn1BON3
	 SmUN26rQ/8j19HLszV/FtDnnjUplIuQplothwirjLfmsRFPyf3MEVvxU5KTPsIqdOK
	 9nSiJY1a6SPc2uOIBrK/5xDR+pJs0Ox+fIW5DsX7LmzcTigLMyVb+prx0wLnrf+DcU
	 XNXZqTy7ziaFGTAhIZu1i5WHg7gwvtmdt6jIGftR35fGYpSdpYhvG7EeO9cc40d8rf
	 m16REy54G8ZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA5A3C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 12:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167732670579.15136.6331614210499005982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277c1b35ac31ace33a921377b769bf6312da578b18975c123cbf78b34c8a9b1e
Date: Sat, 25 Feb 2023 12:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677326705
