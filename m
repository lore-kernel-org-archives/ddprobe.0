Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F91D34CCD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A4FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690317128;
	bh=qJkJMLBdzdnwJqF16mhY+Lfck+VKLfJLPYtnSefwjto=;
	h=To:Subject:From:Date:From;
	b=jDZ5A+/oUZL/m/Anp6f0MBNMXVqJsNpnhjmQO5BMvIE8RKBlylR8LQgnLJapdS/fn
	 b781lN0fgmIzhaEwl9WmR29eLGjOf3QyXFV2j+ExzK9BRxYw7prPfRNa7tvL3I2R/O
	 ol8ddrzAwcTuRDiFlfws1ud/4YolLBJInX8Yqb80yh690cXfH/yM0cGsSl4688Wr8C
	 dB9xwL4jQOBnozreQqucmmtpaK66rhr0RyyFLhTHtKjl95r1L6MzP+CXt5wsbj7+69
	 wGxECiu7XErmONB4B+/jyQaqY4lpMK4G1sdo+erp5K7GFv0CrxbVYrCdaFVBRquFSI
	 69bnuY45fPLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A89EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 20:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169031712871.4011.9002620182454774682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3a62515f028f1b479d01be7685d6dfcdc5e7fdea7b2ba102221d6933ca9e3b
Date: Tue, 25 Jul 2023 20:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690317128
