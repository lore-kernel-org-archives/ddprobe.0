Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3494988B
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnbK8zVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86671C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703716096;
	bh=U/IwrjixC97A3K39XPsoCBw/pQ7Y6oUhtCCLGsP/frg=;
	h=To:Subject:From:Date:From;
	b=mnbK8zViBufc7Pc0m4kgf7ArW5FxCVXAdn4fRioiyAIMaGtA9ObJfCbtmoi/bh6Do
	 rRXtRnP6LJ1Yt5PvKnUo6LQZdjUQc1zP8zv4+74aClGecl1PwfLsarAIul4QaJkYd3
	 6rup2SZsWmFZ7w4hUoDo1fAkrNQhHHoZX1sRoyGDXJ0OtShT48ztpIMLKEQtceJqWg
	 z/PBTWOmD45RI3zMCGrMkrL4gI+F7vcLkVMjmKIwKSxnhJnOZrgFwT5WWMVrO0bkuf
	 hIhKL59EeIO9k9VZ3iAqwhVnQYTaj9G0jU5Epu9Z6jEHQgsnR9/H/CxltcepCL+HN4
	 KJSMhH7ecpnMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C99C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170371609640.10062.3045347670254646730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f06b039f1e1f4b45d8b486c8a5e1636286ff7188c56b74a2c88cff68abbb444
Date: Wed, 27 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703716096
