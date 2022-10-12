Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C571B15C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB4AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665544853;
	bh=wlgoSFerogZ2K6aDVcWMindMSobhsgUXWdp+Z1E6l2M=;
	h=To:Subject:From:Date:From;
	b=BPUgD3rhQ8nO+TO6uWFs09HFLgMA1aQcHrwH0gJNc413Pi8G4jEh3ErMQNgQLGqyc
	 fQqIKsILI0V8zNSBJJlU5ESWINi8ibfOGhAqkIxoMQ6eNO1jKwoDEo5xhVgdWA6B6G
	 HFGYu4dTVvICugIr9BCqfDtD5be5DFPkE9eVkYsR3cFhhECXP6vpOzIXjQANG75LKD
	 hcuwpLLoIA242iOcfc4zHXjrmVzXTmWpPF9GZ04peQpEfIHtIJ4LxcqnYIE2/ij7jI
	 TD/qeYJz2aItVg+Thb5jIwuVEaua7lY+BJ7MZacsn449xYgbHlbF8r10O64I7jia/6
	 rN9B8+nZt12eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECD3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554485331.22003.11282078723542338748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da357fc697742c52f8dabf66aa68f754e2088428d5f99c82b53b399437646805
Date: Wed, 12 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665544853
