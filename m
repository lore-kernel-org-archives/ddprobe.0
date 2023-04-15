Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412932F39
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B4DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681602305;
	bh=Ju3BoN7FrzVYqlFAAzXz+QPmrkJniT2H1lt2J0kHokk=;
	h=To:Subject:From:Date:From;
	b=giVXbH9IgGD+VMqk4VPu8TAad/jETsaI9RO5DuuXUtgOg4sQ/VJVmKGvV9uQ7uBay
	 y0MNjTOY6GsAgnEmgWJWhVnH2hUY5M8RDd0Fd3RliGfYK1gTnJQkQi5h3NrDpNNE4a
	 65D8Wm+6p1XoepQiqb2SAwplv/XUoTJqoBsafvhm4ER/0dh3rERTOl9/R65LwAvXa4
	 rBkKvN1In5PK+b+SEz5MqfCmKbWR44mL9jmtWtgEc0RKAOx7AKs/6FPW5M2VeyU9Xr
	 qglOr9b049q1oN/NiSpZJybBxFdSm5M1NXrc/8tliN4LnJBJccXk38Uj7XbN4HRfuA
	 RhmGkAYHr9Wng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E55C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160230578.2966.16064066679275781881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d7a0b61d5270adecc529914170657f1ca9899eb45ec22b90ccad6feacc349e
Date: Sat, 15 Apr 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681602305
