Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C930F4405
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73ED8C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662568853;
	bh=iMf50FltLuGsm7arHV+naGsIFwH7osMrxO4zhglqjIE=;
	h=To:Subject:From:Date:From;
	b=BUFGPXN1QyKzvJ0UEQiBIaY4NyeFrH23v/x88CdnBV+hq88Vpwwp3Aw+lG/wE10g2
	 WSmNXWC7gIynCCKG8fw2nAegkb8PIxS3GXK6Algzed7Wvo58ajxCUpwgvhsb/HKXrC
	 exzPdnE3SObcXxnwPGZPSGZOIQKBMaDIkk20oEdO09o9ZlD+5eGPEFhHnGD96woE+D
	 2UIPTvrqGADZlKXa1RZG93ajjczqGZWjwbNITRAKMvY3Ie6cffx14fRs7VW4V9YMdu
	 57Qj2Oay8HrG8iSHe8xK8KZgKqSleehAF9at92Oa0sJc7jyDGtj6NJq8ZdkdOpboEp
	 NjSqPru0ngpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554ECC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256885334.26649.1311699296081747116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b5d8d3fc2ebb30622594a864d3b4fe59813ba05ae9296d76d370f29db5f998
Date: Wed, 07 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662568853
