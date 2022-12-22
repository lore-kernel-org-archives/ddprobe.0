Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8C723AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BD3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671693687;
	bh=3EB99RaI2mysXTntMYZYnNJSdVmodCptJ9XZsPQa9qQ=;
	h=To:Subject:From:Date:From;
	b=S1+kB1UykglPw73DTPMXHmFvfEvzmldAR4sNGFzGX9QMg41BAoDd4u2HfwhcYFub9
	 mtedXm9xbaQb1nnFa9GAzWCqeFwXxl6f0va2kXQKv1Ch+7Son2CwlYPk7wX6qp6LFd
	 cw9dd9ND5j3azYL+w7yndK9/cu7o4aWq7VZMChzBmqU4C4EKBnRt2zzVmYKIgSl6kf
	 sW+58ijZcTXLnKn853wt/hgkxi9gyUNbj7ytAD2HTCjzXf4KY5iodlJri78B8HTkt4
	 0mdapyngeZZrY3MuY9WMYEubnOGaLv0L+8czy4+h5OGzVYXfnKc2au/VSpsN5PGmf/
	 9q+sDv9QhBe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA60C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169368743.2591.8961926884992669055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6435db3ec6198c99ffa89784f18dd2f042fa2c7e88725425573787126ce42fe
Date: Thu, 22 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671693687
