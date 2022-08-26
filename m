Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40EB2560
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71777C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661501452;
	bh=StY6ofrGAiK8bXE11oczP74KFLyRtGSd8JejrFm5yE8=;
	h=To:Subject:From:Date:From;
	b=aBXz2b7WUX8Upwu3UuvxQhvdoad0Y3ntXxqp0cT/OiyyI5Rj6/7CgceqGkStKWyr/
	 C1zimm5ryycyLlBmnNDltfVXI6hZOvihwT8H45BirZO1D7XSV9bsa+h9p8DaxJ0QkK
	 3xAnRFzJML5eOcFLJvgFW3zFGhsH3HQp6DXgexhWXaBDItAYmS6JzGAZXx5V9XG1sZ
	 9JuTJYRsJfTicgwxVAixQNIuHKdjG9Ct6bjhLhbdWS5vOfkYe6TFid0r3jOV9qiWsS
	 9IKqw0ZA4KSAcDiAoy8NNWqXnRREYY/jgeso1nhsUNRfBRyjpnQCTcCW8baglpmffV
	 C/LPKqN6mqV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FC2ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150145233.20023.1348317013965011560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031632c188541555fa1e40ce47c8076df2a51f3bcd3ddf41fc7abfe8d89fad1d
Date: Fri, 26 Aug 2022 08:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661501452
