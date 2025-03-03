Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B23C1F2C34
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740997735; cv=none; b=W0Bt7rNAIRQfRAurRAL9RGC7bJ/+5ymnyyupLs8DfaXOUpCsl5wSp5RUJoSc6exvItIA3jgG8+FJaHvc5GT37mtx6KsULO8BAZzPFkN5vrThRYa+YYTIejST+CGD8RKtKX+iOn8jk2ZBVVla4fzeH3lqtBLCrCmVCGvgDdU2hkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740997735; c=relaxed/simple;
	bh=AX7bRsmFdkZ6ghab8KYFpRvaZ3gHb18aA3uw/EgA3f8=;
	h=To:Subject:From:Message-Id:Date; b=YIIW21gSeHtI4+YZ0vYseMm8X4juaYW3qgibPYqJK4FNQ+7QklWOOLUDzubzGD2FG86OWmW9zHdE0vwHkkfQqMH6pz0uz6WvnVadlyPklDFVkAzRsiZjBQ5ZDjOt0UJ62Bh4Mh4v6XMGElqc1hwmQbY9hXWYFZkdbqTj0QWbHIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLgVPL8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLgVPL8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53E7C4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740997733;
	bh=AX7bRsmFdkZ6ghab8KYFpRvaZ3gHb18aA3uw/EgA3f8=;
	h=To:Subject:From:Date:From;
	b=HLgVPL8LWmwyjnK2IrAhYJM4mk/Q/3LyQAknPdIsffg5d5iY9q3tJ92qCu66RZj0P
	 +BbWG8xD37jRz/gBNJM26C71klHMwGWnPQ0HoBsui7iDHOpIIPhvUFQJsReGBY8Atd
	 /cODpVuxOMf2vc74qZFP7ocOnnstabtvGfU/tCZtdIbR9rSGyawRdeDaqQ/gsq25Wf
	 ypmst5AO2wkfNWWyIU9J16j5bjvmbZjL2fQkTy3JuKMTdaYo0/ZRKpI2IXZSReTHN/
	 Yb1f3zTzRNfoW4tTk70TXUz0FUaCjYU5FpKiNUY6feWUKuuI9gvLTF6TtRxdh41si2
	 TE1pjDq1LYjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CAAC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099773364.9762.2184511140127205592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8044e7b191b47078d27e6260233e4949f66fa383ccf9a6eede7ef6b1eb50bd
Date: Mon, 03 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740997733
