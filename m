Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7076121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671018087;
	bh=KglNloSWIhdK1IUeAfRuN5de5ET830yUjL753AcR+hs=;
	h=To:Subject:From:Date:From;
	b=DKeSZZKtVfcjeui7/WJZ7fnPfZ27T4LI2FHXJQ2fhx6tndysnJK+RzQaRSZqKp3pv
	 s+SbXmuOQqDGn3uiRKv858XaRwy3igw0EOoSWee0KOV4jUR1gce6/qdqqHhaEEQLMy
	 2sFJAgvuS3MxFhbDSVrONx1RFK4gWJKPfNM8b6ZMnZapfpjuWH6LCR57/e0mefH+CJ
	 H9H1TfG2Cod0MOwLEG9bCL8ev+1Br0ByEtygYEOF/4aQ6Zfb8SyE8jBpJus3L2/ald
	 lG21iI5Uh1yTJL4uNzazPXUsHmD906+FEqZ2PIKINdHKEOc522dS6B3YI+qbgTwlem
	 7XoiK/7hy7Urg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665BCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101808740.24002.388183783102013552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20191140d1958d29416986980e4ef5803e82660b65bd62e99f6d9712a24f7ea1
Date: Wed, 14 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671018087
