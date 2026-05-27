Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D503B9D90
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779916354; cv=none; b=TPkV72tLIyAXG7fCNLq6r6dCwjWz7+Uh92Dpxbf85UFvNiifdGUnT554klnHwKejoyDO1VTCjDhTvIU7JGFS5Jqfncqv/YJc0XOvqCcxVzFfdIgHagMlqUzecMOG5zMy6pR1L/+t0bVBRS8G24iMqdp+b9C6CAFS97Dcfv1IHQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779916354; c=relaxed/simple;
	bh=9cGmi0RYz4DXhsILVKmUk4YsthQsenYM0d6hqT5wk4M=;
	h=To:Subject:From:Message-Id:Date; b=cT8z1ajQtg0tE9giEwd0tCoIvm76+qPVQ4zZGz+6NzpJCkiCnTVxTqx2GA4dT/rixlmS/QNCTFEvdBu9GFqG2pJ8rrYXguHOEP9LzTPtku20QDUgWOGyNginW2S33aD+55GDtfeVgdJ5y0DdkIU5KOEiDWXNY3HT2Fe2GEBYdnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV0sx2/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV0sx2/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CFC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779916353;
	bh=9cGmi0RYz4DXhsILVKmUk4YsthQsenYM0d6hqT5wk4M=;
	h=To:Subject:From:Date:From;
	b=PV0sx2/a4pRoZtH6Bp9mw/r5xgoI6h1XPkpWOeUjVkJ8IhDBP5R/l71aI2CPZaX1g
	 DALsobnHSxuChIf2KUKCCtyz7mE4sCk0P6zr6Bclf5fKEY273aIj2YJb+pvH5xuxe5
	 Jbul4/zGXyDUZhlSla0J+ikM/ygRWHF+u5L+ULIaGvPDJbvqIFRhCdHrTv5A4osRWk
	 cw7uzey19UDeuQ0mZoaEuJoGfJmqQ4pUZFOmIi9yJb43QAMaXEX7g3c8S7j8xMO6Fd
	 KhuemO5l1GSTOtDCbJvbWuNCN3VCNNQzGcUHaFsfYP4NBoxzp06NZ7EWXLKk/qjcPR
	 VqYnKlgcl+k/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D2ACD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991635371.30511.2662891868519270838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad85c6f3645bf2144d13d664b398b56671fbae461c334069c0564ca787dbbce5
Date: Wed, 27 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779916353
