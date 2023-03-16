Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E07746C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 18:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E26C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 18:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678990806;
	bh=A0TSGfTO+SCxu4sfQJoAMRhii3T5lMfi4nLF/rigD+U=;
	h=To:Subject:From:Date:From;
	b=mWkP59fY6zkwWtnqsGTEeY2SXGaLodkYUZHFgFDmJVKjwOw0+RAuAjoZMstK+VjF8
	 t1x2lTUp61b22Vbr6i7K37j6T26Bo5xmx6bkaCjDTVkOIRElDV0F8GQgBz5EmmWTGf
	 I9MAEaMeoHoEFxANPNv4vbxlQsgffwyIaahwBlUA+Xxw9UBQ97RNgTVqKtjQVd89jo
	 uyhy6oTumgHpGuDM1yQ561eS7uTqDDDHmqrwTJ5Jn2BEgdj2yr4DjoMjaQHA4PVW7B
	 ayI8LGjQlafvtnkbrJKh09jI1TH9BR8rpn7N+cTiH/QNLkSftAyPN1SSAQRKhN9o12
	 FXsxXMkxE7Sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF496C6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 18:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167899080589.28789.4416573934915318276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299d0203582683b4f431c7968f6d464bc429eabea97d433027d0a34f0dfe405f
Date: Thu, 16 Mar 2023 18:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678990805
