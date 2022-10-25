Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02E1EBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B427C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666698653;
	bh=klA8S3UfHEF+aLyo3aAr012HTN2vx92f8FbLKowPPeI=;
	h=To:Subject:From:Date:From;
	b=f2EBLxNeka7MRLApmFbaHlwXPGOMNtRo84yuPYGPpfoArJgcbZTA74TdJyty2HEfI
	 O0rilEJ+XZ7coiwU5qLHcmCS12YlyvU0mZWJ7iA4zLLizIiVbI8IvWj18ff8kNxDMU
	 MkZ5GfGI0+B3QZ9hteipQcTUndoDzPrRNjJmz6XvCSIOp+f6ihzWwcIw1SpVwLg6mC
	 6j2Ox1h5aulJevVl3sL3/GD+tGnfU2PR/hL+eBjhS7Syuk9Byz8w9HmsMNVkoiePPI
	 uJ9tJxlnOlzorokYe+CL7JQ90tDTTe9aOJ9LcZjnoeZSFwTY96dvksFnEBkjJXPpvo
	 w9bKJ95q0I8iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529FBC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669865333.6283.10923116178456056866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916e5d15f3db893e1d7f1402eab2321e7560afa7acce1e0bd2e981a4139edade
Date: Tue, 25 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666698653
