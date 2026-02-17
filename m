Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1025A2D47EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771325094; cv=none; b=AgXGx3CAnNJ9x3Bx3OdNZKTodnfhbSXO21MCu+gWrrx3TkfcQ9YJHeueSdYy8P3wHdY/BWCLBSYBKcR0VdcNV9Zd673nkvmFh38OhAqTtsN9PLEAZe/1QqnQJO0rPJwnsfJAHohP4Gl1uMDHupzVs+vQX7w/ZrLto7HyhqK4no0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771325094; c=relaxed/simple;
	bh=LoH0hS1vVlQFJZ37HiUgeEJLzSCRYe+H8AXDO6nLDfM=;
	h=To:Subject:From:Message-Id:Date; b=UCjoN6g/8M6XS8EnrfjzsRlrrxT4p5yqt9yq9NNq0aI6D1NeI/X3uZwavXPY7L5j0ELPYkIXJN8v/FvzHQHVuHX8pPJSmpcwYJqRagRTxAKBOtSb7kTioBRGhwW7kJKB+p1q22nCGM44ih0jVPrqCH7Eh3AiGFyjxt8Z5XLTZkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECfoXb8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECfoXb8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA77EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771325093;
	bh=LoH0hS1vVlQFJZ37HiUgeEJLzSCRYe+H8AXDO6nLDfM=;
	h=To:Subject:From:Date:From;
	b=ECfoXb8otd9yQDXp2EdjFKa1xA+8+Qh0nn8RNrblzX3xNd2h4YM9xIZBLE6CxX5kq
	 /Ju/7VomxLcU6178FkrKX4La37w8rWbZisceYVUU4qAIvyxgBBVJvdUiOb9l7M1VlD
	 bdRMo5v/33xF8AkKfiqGEUPkm5/fVf88jFe6L09MqQTtetbcI4+NyqCYZiHMRBiaLO
	 w2G43UfoUn7MAf2E8kVGj1gnDMxSjzIAxUtA5EyYwdtTKfZ4zoxAWBr3Ea1wIAlfiK
	 fJk1dkcndKSa2yXd/Wn+DVo+7Mz9sQwiYPOmc1Lq5QisynT8k/Lt24QQZewbol/rk2
	 +9uicmyED34bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D56E6816B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132509360.18740.16751617203478411232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022fa9cb27caf6ab932c754af0d8aa976d536e72ef69ab2ed05539943903170
Date: Tue, 17 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771325093
