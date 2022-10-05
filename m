Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4871626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E66C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664953853;
	bh=twgp7Im+DkLIcNes2nhwQAp5MttKWI5pcqOIc+DUulQ=;
	h=To:Subject:From:Date:From;
	b=Jt/40ZkPrk6CMIKwF5wZz9f1bvbZ4Phe4W1EwrUp3c1oxOCLNYL7BizSFU78IThc6
	 JwUw7bqVbuny8UnHvQWTXVSxyTfPIPYdSQvM3SfvlDghd2AEH7Al3Vwd9NfhNu9Zjb
	 UgODQ9+j4MLOm/ShYUdc7KiW+zD7lQPBLpaoGAvzq/5mt5g7BPY+Ft9762N1NqtlQY
	 5cf8v+QvvxuuZpJgHk4Hy4Ls4TZePiBcgEzrmXsOtl7cPmxWYRVLrh4fKUR4gNcuwx
	 3jhSowTNZrIQYqhFSkugzpPayIrlrchXb9ovW+QeG1cnEowi7qKe6qKqB7g+RK9lRh
	 JS7vcC5xdEWkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56834C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495385334.5447.4761856479523915181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1737b19daccd265fbc3de80f07fab26e8ec01ff4b1365b0fbdfc5d81989758
Date: Wed, 05 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664953853
