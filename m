Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E631362
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B9EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671849687;
	bh=Pr3H/r9bBv2fqAKhZZNPBetmI8RUne61+OuowVzVXHo=;
	h=To:Subject:From:Date:From;
	b=NA6cn7Nz3+C8RVqIqtY0iekkI92UX52WATzBmQ4GJjBjaik0MjJlrqGnuOC9sD3mF
	 hQs9ulzbL7WPnVedEt+ratVdBqkK3fIADBBe7AFXExMBz8Yj9B/rETKAbNP/D20IYF
	 k4JPDSCkE33JbKCCfTRQJPeoNQD7SCncMW3dg+hO9Ms6qfuzV5K1ZwOe8WNWuNMGX4
	 BouWt0AWsDPgWmPR4mwOdi+POi6Nva3hqDf3Baeyso4uPS+DbypA1ciauESGoMzTmj
	 BBBNxdzfv3D5YQVcWK5SG2Ntnu+uetjKfWFNdJMVIsCd46JoTjvX/Z9B3Ny7GuA98l
	 zKD2/hIRbve/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9B7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184968741.20102.6869462494479839339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ca33c1de23aa09f6ede45b5643d2dedbf207332d23ddcdf7c50e9afec5abd1
Date: Sat, 24 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671849687
