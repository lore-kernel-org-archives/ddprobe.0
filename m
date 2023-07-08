Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F4853B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2D6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688825228;
	bh=997+Qi5QEK1EmiBk7INLrF1zsznJR4R27b2yJTeX2HY=;
	h=To:Subject:From:Date:From;
	b=SGANEJ3kqxqhJ0mg9js3wlBAJU8VTYAtVXpcBXvE1qCAye75vQUquQdhZiaRe3CrY
	 6TF3MnrlkfzeAfCIec1SubbvVNH06NbVyeazJydJp2wfmIBYad4e5Lgv2/bn7X/4A3
	 ypg4/IFIcs7Hat6dv2rw1mrkzw9V9Xe/T7X4GM21P4/UGwrGZgFAdimHXEiHFiCjCx
	 YIO1ZjA3j0esUqF2MjvCBodBZ2OZIHlsbiRVD8I6EIWK3IlrQNNRFemR+Y/azP6YKe
	 QS1MyuAAQRb1nYyzgd4CpeYiqzxN283ZuhTO12yroPMNkFzne58ImFEQskaYMuv8WQ
	 37fVSlhFvcsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E4CEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882522866.7505.15208622093763479090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ed33632833dbdc409227efa6110b54b6717f2bc86ebe54f6c13b5665caf3bd
Date: Sat, 08 Jul 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688825228
