Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8156FB1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16B3C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686208385;
	bh=QA/NeyM5xpZlY9lg98gBl0hA7wZlFHlbdB6jAqtVN4Y=;
	h=To:Subject:From:Date:From;
	b=sD4Tulvmu4IZuzrLIES0+GzseLWrblnGyM46zgBLO6rTllDjkB+BJ/YcvGiOmYrpb
	 5EL/hx+zdMCJhJaFeEChYIAOdltpyfzjvShimORFThEKqSqlu4buo2glssIKZG2jWi
	 /k3MI0qYJeKYyOiJce786dcv1EkNRCFCIsmut8VDJHxvqjQe/hgeeyXnX5IFTqiWNx
	 3MZnTUeaXx8IYXvGmgxUNFUxxCAyUIKNubqhAD+WZdh79af8DHKOol5sOJUn/LFe+H
	 irUrzMZ9lfOHHFHWCuoXc3Kcb9GbsbBAEGN5gw7onRKn+rHM5UdiDkMZcDaghwhhTy
	 wLOZFmvmQ8eqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62CBC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168620838578.22573.12651420667174042504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303dd2a934eb5856158c5731139a1e215bc90ee671a2f48467c7441e22905242
Date: Thu, 08 Jun 2023 07:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686208385
