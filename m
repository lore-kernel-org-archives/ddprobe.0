Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F287E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E5DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662772853;
	bh=isxB9LuCRzOZInnTBPbVbkxxD7iI0+iOAKt7BZaF/RU=;
	h=To:Subject:From:Date:From;
	b=uXlvpVTtGXVF+ZTXcUkpKYZrcrdt4VM5cAYi8P+0IpnGSglTKLqGxcwYS+vWp5K85
	 c37Qg2n/omCJVpKL9JmMOvvzr57Yp5il6Q7uqFz9w9nRvXDF12m+n7TLGh4MjqBpYG
	 1D8ncKEn4BkNWOiPRQf+Ll9+mhLyNzUon95zadDsZzIRmRqtgBiR2ySty9LSaUMRUS
	 k6OfTpLqs/Frk9LqpO+nURA2bsNkq0S3zefDhfT136QNCQm4n48puXa5a70K0T3S1v
	 5IUsAqfi/kOsK6hV2KTXZw84bN0RMuKmTzuGq0yx9aCdRSlUzpBoj2zPo5WK6OsIfr
	 //JKGiT4dWhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5600DECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277285334.7847.9840008952050817240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427f7908d95e3cb0599a3dd111e8040b89a92d5d5abd157a9a8fb31f087a3b9d
Date: Sat, 10 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662772853
