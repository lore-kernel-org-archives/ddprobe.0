Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B4817F2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9244C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677308705;
	bh=jJ6Te/jA8eYw7NeR/mqXMwogF+KZKHT662E/lpIPHMg=;
	h=To:Subject:From:Date:From;
	b=l7TRMMGbYyQnUrTm85MGsedwjTVNgl+gNP9Ev073siUOSBIJ2Ow02hUh7soA465fh
	 Dnbb4MDB4qN1JIMnt5mxOnHg/0nQ5uZr0bk9Auh67JsySIyCT2/P5ybizVAY6TaXTb
	 8cdXESE42I178QsY0n4EGX+dCu237SVcaeMsHzOwsS3041FEPrakFOkBZcGnaMAztc
	 OHS9WMqD1PbOMNUJ/+NIq/77lC0HjWz/lMpgW8ISgfIUcue2enVEHHJBmWEtXmnQMA
	 YDO6Pk8KAB+X9nsmgCPN6D1T1rkeZ3JGcRIVfEpaBcbVftRYe95YI83tzS/OqLETIu
	 jHSiU+eNyELFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF73AC64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167730870572.20481.6791951157465950137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd98d31ad5063971c4277e899f04c8458876f57acf5bab4135887e500c51ed5a
Date: Sat, 25 Feb 2023 07:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677308705
