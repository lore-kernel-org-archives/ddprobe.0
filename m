Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4D82C21F2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774976693; cv=none; b=es4RQDfGlvWZloxLneWz4Sq85O65fwso4NTHdYeYMk/Jqlqps/q6RCIcTrrJcgOGPUDfKv8Ip6udYlbIkPUKX+9rjBUqE4MhesLkDzZhn9Ju+rF5idDkfOIl9PxErUp8UTYtEFjc8pGbVjdxqR/cTRPe/79Ho5NdFLpJPAVfnqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774976693; c=relaxed/simple;
	bh=oR5p4A/7fMFNzq1PWmukD+EzsH8hoXrDCLXQmF2FAtA=;
	h=To:Subject:From:Message-Id:Date; b=udB2w5a9LieVQJ1XZ9+Gfjwcu0HqqsC1Nz0MT/xGouaiLdlvUXs8AdZOP4pBlZFp323NKTBv0eA9ndg3dFwa8lC1fxrj94WC7/Vd0CPH2nHOyTTgi4CpshQB8SeUe/+H7FIstsQc4FEBJq0GbY2UmQu6CaRjwJIFjqytpZur7o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iStnxaFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iStnxaFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB91FC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774976693;
	bh=oR5p4A/7fMFNzq1PWmukD+EzsH8hoXrDCLXQmF2FAtA=;
	h=To:Subject:From:Date:From;
	b=iStnxaFZM6mpNJ/HQbNJG79M3qca/qCijtVav/7x0XfaxeluPpVczgGhB7dHCsn9f
	 Vp7KGkVX9gfyLCVhPC2KNOUzDthrJrOKMyllLvmo8aCblJhr6KBUAw36RKF5FpFDgE
	 YVTYoxooEo5Hqd7QSRB4UuBHmgLno3GevF0WuqN9q2ViTSrVRLw07ETY1H3YduqpnB
	 tyb9giaBKgS8f8cegg/ZR+avOzjxIiAqAc+fSJhR7jWsyP2Y38Atr8CwSFkweNwQ9U
	 dnwr97VaZ+bamsSn7me6dNTj/Td4zhjKQCQpOkXTQqeN7lDx8119HY2fwf//f/NGec
	 kaCVl/ZG3Y5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C13010F92E0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497669359.12610.14191973683302210286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af2c80a389500be1c5dbc0f1f3d9da5790ba40a6529de2fdf0c01b2fc216295
Date: Tue, 31 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774976693
