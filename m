Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A8763D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ABBC433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669054254;
	bh=rCAwU6csssmHZtxtDUmY/iERIwmqNfvK80QsEGZ5jhU=;
	h=To:Subject:From:Date:From;
	b=ICLMGCb8fym+Ia1hO4iIy7CptNzWBtKuTjZUjRq+ROk4YN71Ki0vPLdF7CsPoVwKF
	 IcVqpoFcTP2UNdstjkf5Ox9Xltqwyw4hAyouU0AVPzcjaVJJAEHVsQ//glSranTdwV
	 Pl81X2J2xJzibpmLVF+VDMZnIcMOhbNG1kRzJEoA9IXXoapSlrkI//CbydSwS1jNgH
	 X1tEIZvLheT7dO8x5EiTdo4YdZbzHoCEf8CmI6wkrVQEFNl84WcT3SUblWVU3Iza+j
	 Vb195aeVXK+WBD7sKQ5nA5tNTXU2YkeM3EMH0ebXIO11TjeBzePe7a3qVyzdSFl4me
	 v8bLKmUwgvOEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589F4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905425435.13091.9287913268373491165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ced2eed39cf688cda3972b6d32863709f397b606ce33a9718fcd3aea3c8215
Date: Mon, 21 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669054254
