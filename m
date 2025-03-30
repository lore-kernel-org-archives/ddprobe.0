Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9A1C69D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743338394; cv=none; b=fN3RC03L7/UrXiX5w2PIUxFBi5rhJVmaGPL+5mkLFDH9VjbIRZNPGHr1VonaOcfO8A+D58Ehjz0tSBh67T2YlvXQvZ73qqeIvGcK7aL2RaVnlF3WvrpZp/lWJ2tvDo9mvV9yF1+7hb+BgRnqrZblboFDsY4xrZFg9C17IQeuFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743338394; c=relaxed/simple;
	bh=1GUtYwrBlk6Fgd/L6qGzJp2LeVwHvXzvz/RhRxclgwg=;
	h=To:Subject:From:Message-Id:Date; b=LrMzEFfwsTN2sDakj3QffJ9EhXUvyv/lMteB8mGuOliGERtOk99rC3Lhdpth7lVaUn0t8enKnY5XE4YYQMx5nDvaMpd1R/hoHufaS98VRa7KAMW0r0HAko2ao06EYMZ4ZO17uPlbY3YQVWPKfW14X53Si6JXih7TmaE6ooqCVN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6XtaH4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6XtaH4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743338393;
	bh=1GUtYwrBlk6Fgd/L6qGzJp2LeVwHvXzvz/RhRxclgwg=;
	h=To:Subject:From:Date:From;
	b=c6XtaH4D7MPwQvxAJrMLZM3G6GgDbGf2ZmkMlrxtY1UtFw31+PjRlMzGthWi9zuLK
	 Z+4yXlvEGus5CG2yXR+iSmvj8AFO+htAR0dca7p3GhcGSyhLl6qg+fnoKeigVRrqT7
	 xL+W8+iTI/GUhS9KWec8W9fVWfOQc9SK1jnaWvzCfCKIKd3B7+kmLglNKBJDwGxvmD
	 Asa1Pj/ZQ49sJyuliQMrodtjgOmTbMrkPY+KyTfeoWQgrFrEnuijFJUuFl31unRyrw
	 1H2vakb5uGRkBl0jAa/oV+YdiXUW1oG0icmciexwTyoljK+y3ZQ/hYIjNJ60lE3AAQ
	 7TeKxAi7GXZ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97279C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333839358.15872.4461227541163851573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382c16380acc7fea16458e54103b2829d3da8dd3ba86ff4611ebd39ed0abad5a
Date: Sun, 30 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743338393
