Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFEDA3C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4DFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674536585;
	bh=f7AdcGXeQa/nqq2jKjb4VyC8P5S0HxVLdE1WWN6BYbc=;
	h=To:Subject:From:Date:From;
	b=dlhANgXwr/qwaRVuGQ92FnmCz8Wt4xlIetRRCTwWSsUo26Xg87G7c7XLNNnetTQna
	 tz//35Oz8mfPDgvDaAMOdaHSbbXW5DcupWODAADDrG2cuYrzNUh3LzO6i9XcnMuRQF
	 VRlrAFs4166z5m21rv13P74VoIHQYJ9VrjeLTSaLAr7EDrF9dLg6utzc/4E+UiDgRp
	 uJjRBqfDEzB30K+WTapSmzmTjuSC09CxSzFn1V05oElyVs7xZGYuMfLfQm0a4MVljT
	 AVw+nMYBJpAfKi35CZVffr+Bsu+PUKfrOudf2jBWRgtNu4KVxW8t28VFKlRMe9Fk20
	 dtU2GFGZ9C+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD8FC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167453658573.22425.3075785805228273829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c483a99d8026833abdddb07578d1c0c78cc1b3915d883b13308f2ff245417205
Date: Tue, 24 Jan 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674536585
