Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3531E5B88
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783791514; cv=none; b=h8Qm5tx/YSSK/3r07AI/MlrSrNnKQluYGWezCGK8T9DviEnbKJRfOp9oQr+ZdJMx4gQn+bSIG+oIJBBlKvnoqLywMRI/hZgv8TSux9Ko3DhCK/rt6NjzK9XnY0JAJEAYmqlt9z24UyLNrTK7Yn2izIwDsS0ZxYQOmtgbNe8Wn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783791514; c=relaxed/simple;
	bh=y7I4WbC6usawKiqcy90mu/k4L6AjwU8hfzur6hGpJzQ=;
	h=To:Subject:From:Message-Id:Date; b=Gfcl+CodSerFlro+V1sizRt/O49nkAc1Z3sZnjlunTBhvXPMHl/GkNOqWl11oDOzLXVPEasJCDrSF8yrnbY8k8bGlQqoziJHwjfMIcxcsCPsuqXGl6R85SDhPqRPuttc118vhSCIG+9iy2gkGE8O8MFmWlWkHTxK2slfEBIiGTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B28aYeOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B28aYeOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF579C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783791513;
	bh=y7I4WbC6usawKiqcy90mu/k4L6AjwU8hfzur6hGpJzQ=;
	h=To:Subject:From:Date:From;
	b=B28aYeOo/9HmK8ttAaBzr5R6z1xlMnhsoenTFQeEc9c9yTcp9egvnQr90rnmRJJXK
	 t7JgQg/9wEJMKz6qKU05+4CXvYwGn0KdUrtR4RSJrxGz+3B2pafSM8uO6VSSgG24X/
	 K/Ed3M3wcOVPw7+sG0B/1OR5SQ5Qo/L1/0yyEpXBh+MvLpdyIIyeazuYDX9jNLbTKg
	 Qp/e/QtWRIDoS0ytojP3qhZdQk/5p9XFVIV8lFa23JoW3CRFT8ThAX01isWblCb1D4
	 PKdrLfZfkQ6cEuKwYV9JeLzl0o4ZT+eaFk667EgnIWghJ1NhVULTIFN1BGlNgx49P+
	 T5H/EhqIS/PhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0107C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379151371.31406.4721158213817636444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8483acef567b4fa63388cb9ef0085ec959f1655ede2e3dd8c619126d75b37d
Date: Sat, 11 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783791513
