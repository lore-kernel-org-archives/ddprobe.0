Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2961350D4C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769956433; cv=none; b=O68kHDxDl5tPcVqlsUdxMr/GQJzpIFuGPUaeZYC3Z4k0U2K8jzErf1XFsHHVOKWf+NXyDut3vKtzenFrCcsIBNYjY4SVPQVlNfrxpy4Z9GDcruxs0LEjb8CiYolwg4Q8BwcnhgHWOsP911dFFXxpFkhASrkkgN2Tj3fSFT9fqAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769956433; c=relaxed/simple;
	bh=JN/OJkfaxJipnQY7aJRWTg8RMCGQbjBqzHOlTQi4Yyo=;
	h=To:Subject:From:Message-Id:Date; b=FyPFET0b46vXrYaJtTsTAJIxmDEGGkWesIMq8fSk0fx7/IsYDv+09BZH7n53oBQqMraPKDQIRNmKQAw83bqdtJOgW4eUZti7/nQBLXdIrn5cGNsIu/LImcatB2ffUzGbxz8e2eFjr09ZNnXzVFVxuFQvlKyh3UTx9e47jUiehws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3WqTc4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3WqTc4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769956433;
	bh=JN/OJkfaxJipnQY7aJRWTg8RMCGQbjBqzHOlTQi4Yyo=;
	h=To:Subject:From:Date:From;
	b=Z3WqTc4oaK7CNLJHkACrWwoDXkxE+o2YlVnHlg+KPKfhplkA4yvcSIQ5jfZOkML6q
	 kJqPZzzPs4cP0lsTZPdJtenze25EdMxvW0EKjEUiTH6xMbkiRo3z6+oWNWkAD2RwE4
	 jXbzV7Bomd8MjoASSsSFcbzTPJ0ZqlQOIJSQpQOeNDL9/jWSy7LYBX2lfYmt5omUkZ
	 jT1GE7v84quOuuviKx1rAfFBd8bKqBFHjmye5tcvFMdqCudfsOIRvtY5yFF5TR/JiI
	 H35AC58hTpr1VsT6xTomn8BNK2o2Gh2PztN/vsEfF6YPqt/zvS9OYuUsnvILZ+CIgP
	 xzs72pIV+JJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D6AE65286
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995643360.27619.9358542602405667933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd084a606f4bf931d7f54fe556b172c7c98db176659d69701d0cbf0855e415c
Date: Sun, 01 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769956433
