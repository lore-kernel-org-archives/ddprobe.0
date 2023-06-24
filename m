Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E7C3C10
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C859BC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687639388;
	bh=56RUxT8F0TDG2sevxugduBVh+2kjiNv1Lrgo0k+KAsQ=;
	h=To:Subject:From:Date:From;
	b=GMNAcF/jCZ+WiCtMxXXZKIu99f7EC7cz7ObZSvHiU3fj/eHaU0lxMZ0GzQoguWncz
	 CYjZbrG+X3mzkcOElcQhEG2AK2Vchlso0+Zikr1VNUGDL9PZUB4DYzoW1k4FtJfggx
	 /uglzEz0Jk5/3swlgWW1RztfhNeQ/gN6a3Ksd/ip6t4jBhJGnqv2zXQUXTAJrxtPFp
	 zS3W/BRE91GfDQSYfMLY7UfpnspnGk7Xr1xJVEuNZlIAXwx2jtdQAHfmpO7lvwysYP
	 oOEwzzdWqN7eDavFbXojZ78UhNNeYoOrwhU8mviK6HhGUT22huGE56sHEsLRtixMJl
	 32vyXrDwvcyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2EDEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763938870.18360.16186910907410510011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d712222fbe4911a28ea28247ff7f67311807238b98ba6a1628190acc640ebb2
Date: Sat, 24 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687639388
