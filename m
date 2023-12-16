Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1454B36B07
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGUYFocI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE2DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702768096;
	bh=ervfZso9XaTWYVq2wPGAdlToR0qbu9HFh5kSqTyFE5E=;
	h=To:Subject:From:Date:From;
	b=EGUYFocI21bxB+RBiOWUg8T9zPSkKt7E2whdfNwq5CYqpd3apIneHGK5uKP5UFVJu
	 sX0OKmH5Ef7QKFfN9qwzTazl2JqHsrDPnYJxWllesLf/cTbEQTGG+V0aGNlM6D6Ttd
	 hUHEBDTZUscFy9r1Wks2qcg5zcW1xyY+b0kBPaGx0ziAFmODq/eb5Fbxo/PTH+7LnM
	 0X6/VCVYK0eFhQ3TIN46zkRdyb9HJoZOhMQCS+E5nnDb/JSPvT2VcGo3FL4QeYJxKB
	 PkzY7bkQj86+Yc3+AuNmmBoa0X7eYUaPHGquqZH/1okvpMvkxrZ5/0J2gkCrJSIE5x
	 InVRzp8YDzgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628D0C41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170276809637.6224.12851111819176666348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678ce5ffb4378c5c3c7082b3dba291548bb868a5cad15a4e7460b09fa8faec72
Date: Sat, 16 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702768096
