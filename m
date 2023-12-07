Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB25444367
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSwiJOsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE5AC433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701959896;
	bh=vTvmaD4dRUQ5ElGjCmSw2k0riX/pcyopln6154L256w=;
	h=To:Subject:From:Date:From;
	b=QSwiJOsy7CsAEJHLA7KvqdtQASvQzeknAyyYsvqChk5RItozbBIY1YQ4FW+pLLKSm
	 eZRNhO9sI+asGoKErmI+s85PgQ7ha2aHDrct0yUeNY5MLYku1XMEjMj9KEGFqOfc5j
	 zoqA9q8iK9AqWbhFhsN6QjCeMKPgn3zPiT6XXYUbEaS/OXTFAQlJ8EN0eILe/qRceh
	 hqa1lPOvXzplXsTZ7U18Z8yjwd3ngPUzmHofAT70M7Yx7e7EXzSXN2cc4i7qhX7CU6
	 Z7nVrZpTIz7Rwc1OBru9HBastvX9FCNEv0wK/ySkCoN05SDyv3BDfJHorjts7iUrI/
	 lFPmm0eawLP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605B5C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170195989638.8690.14935572610479083378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11b5e51c64dd4ceb0fd1f8a9da9a93552dad83366dd550c375ac0d22d89560f
Date: Thu, 07 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701959896
