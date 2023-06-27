Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6B4A27
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2739C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687906988;
	bh=KLRbsdNo05lPhvQhN9hrrs+ObqXVlG8uE2FtFSR+WlI=;
	h=To:Subject:From:Date:From;
	b=epMREgJ32E/WuwUkz96BXKpcRgdCxq4cGTjj61jRJHzD8waTwLhfZU2pYZlcFOeor
	 9cDIaVaiC2HUIwm/jGJTO2DWnkjuOvOM1F2pzBbcgcNuV7RNhnG0KOIzcjnefDUAeY
	 YFs6gJqOsTFPowWFAfd237gdWquhA+KQX9TmK5dJO5cf+y19cRjnm1m14rjssZQGrh
	 uC5XlZwQ9G8PwdDeDjAluYn9Hk0X/bxSDnNAkEz9pSN9uB+d7/yaXth4/pgaZ60j0m
	 3uQhGLReE4LJsygVtpl+Y/FSctmSJPFsaYBYYJjOjFGCaTdcEPNxVJVqk65wFPR7p5
	 Xlr5GgLe8NfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F1EEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790698868.22102.2787344614654765808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0b37a0dfdfeb1d4b6a8ea98ef7d9630822166d1973d50fb8a0a874be3eb89a
Date: Tue, 27 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687906988
