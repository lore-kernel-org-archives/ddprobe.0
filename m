Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639E4107B7
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0646EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676375106;
	bh=IeC0tFaKM2JnAjznCFVkcV70PE23tTEUFgHE0A337Ak=;
	h=To:Subject:From:Date:From;
	b=mPPOdQfE7A6Qih3NJNTn0l30aPdnfO4yv4n7EiPFghjUHLy4H7m+juNrNRHTaKKCj
	 VLI7BZQNhV8DGTIpB0uUCDAP1uz+nc0dHP1TZivkFumya/awAYR8E8BKta23DJVUEV
	 VJdrK3950gzBD5scp5NI1YeJE1qe+IKFurLJbZG7DI1zlBJyWJOe/FiOGfX8kH8tuy
	 ymDtpea6VSlCRsBFhZ7kYUKOoytwH6z7PkFjFRRWBZV+QQdVSE1gezhbl6SV1uspNo
	 /Mv5Gjsj2e/vTBPfyQwjTEd+PXa9AKzH2Tyy0M02J7+b2JEgyC5y1JXBIuh/Ye63Na
	 pqo72Xe7AqWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF106C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167637510587.21156.10803154924311260491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e5125d782cba85bd53e06b69153266052c8d078dc048419929d86e49b300da
Date: Tue, 14 Feb 2023 11:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676375105
