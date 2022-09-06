Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E5E173
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E189C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662427853;
	bh=OPaLXgOEGufSA1oNRq7BFCSzNiCs5MFpLnN2MNinqnA=;
	h=To:Subject:From:Date:From;
	b=AE8V03tF3x5QGCKJBHJPDy+YK3WuGdR0LKIqZ25L/23G+Iy1Eg/3RxrqNtmdU1XjL
	 JbrJSClZjPCiSHn9ns0gnX/H4GYprFp7GgQA5rf0ibEfUolA+mCeNJ/G7MRZ3bkP8k
	 2gTzBsXxET3ZiqXc0mxI0Ow8qQoJvNk8yavG2Sm1WarDHd4JatG1c9nTok4cvv2EGF
	 Z6Gm/oT+HeojSgxJyNBjRa1gd+X+lCPVEO7ZfgrdG5FGbk3xLU7mXKGT0NlkRAC94T
	 ELGFbZPDGanExzvdInFMR7drkm3drM1DjWcztAmbtSMfHc9YHYg1QhbVsw+cPtpFTW
	 ExPSaxflu5U3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EEDECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242785334.10840.10788176030716718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e50946161d6a8366ae3c519990c5a16bee4ed49105c1ce247e876d60bcadbed
Date: Tue, 06 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662427853
