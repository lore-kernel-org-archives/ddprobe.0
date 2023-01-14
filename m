Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B517C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BEBDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673713887;
	bh=3ak0mzJ6NJgCux33AGvHAcSKmSbqZYZZo8A99ugRSbM=;
	h=To:Subject:From:Date:From;
	b=YJGOMXmyqSP+6MwH+9kQAjukL5h8bO6dWtwZ4Z5nRxKmRQyHDGnAwfN7L31RLR5a/
	 Iq866imYE2fGaHhYPG0CBV3+0GCsYL32+DxsF1r5YUxfJUjzI6skq33RbXmQSB5J/e
	 ar6w0NOncKwm+QcVJnzL+3TCX/L8nWtmljlS+shrFLVnXmj5wnUcY0OmiyvkZq6Sp+
	 bzJL/lGVz+6a1djnDACJ9ESvrFlc5ydKMYkNVQIIK2k2c6WNBlklznH8qhcQAdxfus
	 VwzhIyf8VFk18YmrImRrlTfEKRJFHGeFPalQ4zxErVkO4ihhstTm5rEh4dadshxg6U
	 fH09JqLQ5YFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71336C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371388745.7977.16563208078908090761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67554afb396d0d00b0431602d9002c5351aa680e140638c4381de499e6034878
Date: Sat, 14 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673713887
