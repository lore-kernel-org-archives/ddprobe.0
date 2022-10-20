Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D9B7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BEBC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666239053;
	bh=ACaAtwQZrDG5nV5VfBTwcWZ0lWK7q4SJnP+jtQJkO+8=;
	h=To:Subject:From:Date:From;
	b=QPr1u8BMVLi1Efb0ZXDMBOjIbIo9/kmbTnBMG/KlgOrLUttQgxQIH42aJM9rG83y3
	 7b9wuWzirKspcG8qBR590dimN5VAvTP2SxsuWQ8z6ug8fipQYqMJsWKq5rR24TJzc7
	 djG2VK4QcuFhu+HQiOb7A1xt0nK2buLmEZ9itFCnR83uRTvXsWL2ZnXip/t4o2oO2q
	 l1GemS7ak2MG0S3SOZOiIT+ZjAvxPOfiESHeZcYsW6K0pw6loEUuhXq2zwOa+lht86
	 3YSAHb/+stvJsurplQgWat+mKd7xJuEdXlypVwHs8eUX7DO0gcwcTffhiN8/2QHVaw
	 ftEEr4ITQoiXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E66C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623905332.8096.7307324712391012507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0398b07caab961d080cae638286e1fe0019a70405c38c8d358658696d7ece797
Date: Thu, 20 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666239053
