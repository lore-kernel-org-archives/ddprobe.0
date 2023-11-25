Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B32106
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecx2frkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8661CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700902096;
	bh=qCweixphBsrQKN6humhmnG9cSlPZLrJkDgzZJ8tivdw=;
	h=To:Subject:From:Date:From;
	b=ecx2frkSfaG8QhMn06mOABDgZtLfNk05Wg8VFDpDqNqO4FFerScuoDaUXCoXSfQ5k
	 HEWRCu0+olTTGcUbwzRdrqIA6U5JEhTodv+u/dXpi9+UaRDTqL6xrzTdg76MKMO3VX
	 uBs2jTOWCthH1TKIzYeRDDjlWVhAc7B0XJb2qoOrzwhbh2HXp+pjy1hFZiXubZd2GV
	 vCUSjCLxhL/nQQl/K/9ZjtodzHfQxzMtGx5jItVSF31iDGfngbOeeJ2P0ltZ9aR/Vx
	 ndQ5ZEQKHjb3ztOAYr60gRUCmHM9OvmEu2g9c+uPdYIj+W9asEb31xVZW2g0gesECm
	 wLHYXb9CptlqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69FB6C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090209640.28710.13621806973110921645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e7a8ede4963520e813e9255ef2be7ad1fcc1837adee519b6e09e793f997873
Date: Sat, 25 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700902096
