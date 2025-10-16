Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095BA21CA13
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760636394; cv=none; b=I4H8J69zawb6MGF2I12ZGNsHId0gM/qW6vWhqR/14kZX/g9zNwGprE12vcLDZwVywJSRiXAr84bN/gM2FZqu9B6obpmhagmQZsxyqPRpJLnrJNBoJ6Q/ivPsFxMdoLwPyRHo9xa6ikNlHoI+pSCc+yU+5yiDYHxHt3Yi1FlTxeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760636394; c=relaxed/simple;
	bh=IarsDu2VVw8yJc+6iS2t5qz3Vk1cEZz7PZDy0iCF/RE=;
	h=To:Subject:From:Message-Id:Date; b=oaYhFU69u/n0ynhAaCGad9mvCrdNL37W8fPYPJUATCBfqQjQT7n5CKkXp2EYulwd6WPtxRvqo9z6Bu1F4Jw+fWkOoEsymrEN5EGdy2QeqjNwqzuw+MxGC7iGXGZfQ/doJL0hqZGSasEJXFWOTvK20QZHjYIWQsvELoBBxG4RbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk2pkZ6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk2pkZ6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760636393;
	bh=IarsDu2VVw8yJc+6iS2t5qz3Vk1cEZz7PZDy0iCF/RE=;
	h=To:Subject:From:Date:From;
	b=kk2pkZ6Dqe8gzaMTXOL/n1P3wkoCPiLa+3ACg8Nc8JbbdNHxbA/QiOZMvtYCEj++Q
	 3BRo5F+wBiJWwxfd1EaATIQXoYCRPO5KDRk6106d5MqgfncOiMZ/YPn8cJtU10Je6y
	 cbl/Mg63lFlCU3Jm4PU8YWg/Yp1R1tCEED7caBLFhu9ofDJqnpGmLrVZk+2+3IjPXj
	 UHXBxqxH8GSbYZ77ZjkPyGKzRgMWxShH4k0mmx2TU3v9MyuTBMaEPtok+rcxU1ROAf
	 gDtZThfw23g3qO8tpSe7QEoSv4LFQlwvW/PHEnOgaa9m1furVnYRvljTr5irSbtlkw
	 n4xnyCwK5FLDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C47CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063639359.2324.13383451336212195129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29d2fd0dc2ee2ec14fb42298079f715457614a29c4808b90e22af473682f06b
Date: Thu, 16 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760636393
