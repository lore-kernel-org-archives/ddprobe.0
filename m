Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87D37B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BA07C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674035487;
	bh=2ViJjXbjLlPFHtc6BTGsZwBAF4srFe67fxaQBJ3j3K0=;
	h=To:Subject:From:Date:From;
	b=qEFAR9yQvTRbL2gWArAjrhHmqw+xkllzmR/wqbA6bKlVTdqqh6xCq7mfSBED0k7uH
	 usXZKt4b4qJUDjhhHgAYCt7uaGlEODmlPzd6F46eZxTP7W4o0FVv7hmgFZLR05UYuT
	 l+V0n1cZ2yYmHf0h8lW79gBvPdnQPW+MjiAPodY2S2vhe51IhLyD8CYmhk4htpiZjd
	 jkuy4bsExerIHfO7YzdgveJ583J61QYzozNkA4LGoOitLsfvMs9ewiQQOFOcIFfch4
	 38HJLKVu4Pnus37wGBY0Y13m7R+Ueqm6YVv84M+YxOH2C2wz/ECHaBBYyIWysD0wV3
	 EHUH2Kws+3YOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619A4C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403548739.15916.3638609013576246989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101c4db0b5343d1ff2dd210176283304964a615b77e96b679264db1e291e9411
Date: Wed, 18 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674035487
