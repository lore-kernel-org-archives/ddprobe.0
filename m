Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4667F365
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC68C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679956385;
	bh=Z+cSLqTGKV1lZ9FAujqlkp4IjEJgU9dQ5Puv7FLYB+E=;
	h=To:Subject:From:Date:From;
	b=tgMtar046h/PH9xwYbT1uJoc+GhrWvWdTx267hphNCUzu56uC7jFmHnB3JewaRyOR
	 eBaeNKOBSwzXEmAj8s9mcGwQxACVeuXN8QwvQ4bk4NsdICmIJIfAJqTdBqfRZGj7PN
	 pV3oztK2tbZKVqaKu8jQQBb6kEsKNSP5KmG29r3N2fO54WMDjSLx5gTfWfHmmcRs5G
	 rjP/w2kIARphEz1GMswJR5aIkOaVjCsVSIdREzwCGpBTruI/IgroJX3HRNOCg4xdSp
	 kZWLJeCUkakGug5LEtz2MoUVW0JnD1cjMQiEPTLzgrXaCTmwy3obqZFHtbAsmdTZvK
	 ihxhdFrSnI4/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27EDC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167995638578.11283.4662281817279609087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22083570e1ca70a6047e46d82f0034bce82438d1ab8eff3d08375d5ff8a3e6f2
Date: Mon, 27 Mar 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679956385
