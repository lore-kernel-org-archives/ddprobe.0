Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57C315AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6769CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664677853;
	bh=iy1ZNjhqDW5NH+zLKLe7l1Eh9puR4mP8qPh4GdC0k0g=;
	h=To:Subject:From:Date:From;
	b=cqWh4g1acO1CoL3rRniGxjlwQJuNRaJwUxsiF962EGGGj+f/E028Nbslc0LKAGCFI
	 poGF4kQrMzrGU60g16DQQ3CJHpeuH6no3FHVDYMaJg8GSnuOTP6VTXLm9h3PaSAMVv
	 REDr9ehmxg9iK85Zw0KDcVbrusj+ibVcV7Ir4JEXPitQzSeBifQtf0W1nE0StMGRD5
	 lGbo6oKezbMCQZUHk/zaPI9NucFsYR7ckds8g1LqI6oHIZ7rCp1A3j/S1Pi7zhpxIQ
	 a/hMCEgcCx1EpPLoOXI3YS6BgFaqU9fPad2ss8KfFVNDVbmdCykfVrAik7+xHfA3zr
	 /e/GOj+Uo9PtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F934C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467785331.28100.13646232492659234457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7551fa25e0911de3d902dfe9ec6a0c5618b35b76e5cdeceafa0e5e4286f33b1f
Date: Sun, 02 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664677853
