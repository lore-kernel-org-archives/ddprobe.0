Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88D32582
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7756AC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667398254;
	bh=jjiGyD0iZ04Y9GKhTh7X+W8jKV9sK2tb+cN/uJonkOc=;
	h=To:Subject:From:Date:From;
	b=YVn0mUjDsk7gnFvT0EVKOi7roiVstaSqpxVSw486lGJUw9h2tqsF/1BkUJ8mbK0nR
	 ZWQzVppHkNOjwwBUV3RvpDRDrgXrejJs4KocI1slWLt7kV6HNfAVGEZIA4v16K1ZgJ
	 hMuD0ImURHC5AztAknQdjgozVNb542+SxnvU71jqh4Um/LDJHGwtViyAfb71Dyb1Ol
	 2cW+TBWVgO+37NP3kQblijnIKhNMIJL4d6JZtc/iu181DBbchNi206e5uqeegsYUWA
	 FRDV8aj0z8JOKRzrxdt9zD4eQPgxds+YZBtr/hwna4AIVxUuO4NN2PZUP1ZujuKqDc
	 uKb6tA4lUFFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A368C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739825436.14268.16862556156090805259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd22c6a236a9a80cff4bf584ead11d1e2d44586d2ed98b43c09cd4fc0e169f97
Date: Wed, 02 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667398254
