Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D204C2F38
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E14C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673452887;
	bh=vgtEA6No/Utu9wI5adrtUn9casrSAORXLZTnB/+NUA4=;
	h=To:Subject:From:Date:From;
	b=in5VuALCkI1MKaKYPkQzB5EsZzItGpNdkHHIHKhqJYoyQb7izFIEHoza+nGnqDkBW
	 YTjbdlKjFFADAhWFFglZrtYGGjkW1YO4Xon5idvMYeACzlv2RS9X59UuDD8iVjQdz/
	 vw5peQ7elbR8XqxMEpzqmhpgvB1/glkc3+ajOBQvXZ880DqYTzE/yKCjtzBq967YTG
	 93GfCvgESDYhayjun8fjR28s0E5inVIUZO+LyFq9C6PDva+yVnPAJH2yWlWOiPlSzh
	 L35PaXAotJpxHF2Mr9MGNFj0OKMXkyzNU3tS7e6WLETzllYn6qAiuetkDpQTfTVmcw
	 IeZSy3mqDtLyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AD8C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345288741.7501.17888818241070731903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b5e97e3755fd9795b98de3e132fd5353b9c2d58379ead448fd2aae29879470
Date: Wed, 11 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673452887
