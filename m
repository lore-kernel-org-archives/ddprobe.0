Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C0E7E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8500BC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672539087;
	bh=C0LLqAq7ChJ7bpRrS55wp9xgpo0sYuB55Akgv5Zpku8=;
	h=To:Subject:From:Date:From;
	b=VOxhU+nBc72oAmDun+E9meilzbuVavI2ChQVLL1QeDw9wxmKhBd9m7/j65FF75puz
	 md5ORrssbW7ASxDIqXF3ST6ri6yFlrxzewcDi/b9gloh8fedgshcON74eWtg42yDpT
	 3Md0XoM8uy+5NLQbMPGLqCijSq8abjdbsucOVVJRWibhKBvApIvdLvH3l0sKhXha/b
	 3QF1A9i0esSkF48BqKSrC7iSOIiHEd9YO7nZFLMZzVAfXOhiEnM5xdRL2exb/elHRm
	 KPtSQ5YUNzeQnxEG83dTbjbcqMGxnaV3VCeq/WyrLZK2IVyL7HTKTIqEEJWyzNnkwR
	 VeK3h22mOfFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654AAC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253908738.13475.7218098394093581353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010afa7da3c6b205c3a84cf661dc4935de5d529a1bb8d99bc158276984a08285
Date: Sun, 01 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672539087
