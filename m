Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C336F10F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4C6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663657253;
	bh=nmhvn4myM8xDHYcNJjtYRr3XkR9c36tWfq9fOcciihk=;
	h=To:Subject:From:Date:From;
	b=Qn7+zFvSS5XjvqzYZm4jdgCZ6uQdMJte3QsPbKFm3HDJCQPeYgiqjgCIa7cOkgJ3H
	 S5razhOUOdkD5p6qjTUGadkVHbogojxQO1iZg3aPGytTKnQr4qoEE2B1TZzedsGTzF
	 IeoiANNlCRt5xftwszRmnwxsyfengCtTPQU6YihrNNEk92LyB06nT+6ZPbQ+nWtUpe
	 ENRQU7hNiJi9EYPTPCOnAn2O3B736zAnhDDDFUHvjIxJtpPMlqxEy4+fbV4C4OoBgE
	 xuamzuY9sxCdyznhbLSvRNoGbBuf7hAk+zcfyaTjgOtFpB0S5SxTYRVq1+ZYw11xn5
	 LMddCCGNo8Baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5421FECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365725332.17654.7532180905751152154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64c7427f54075670ad1d0e4f97f6de2eee8bc9b75bf8371b77001e2bf8c07bd
Date: Tue, 20 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663657253
