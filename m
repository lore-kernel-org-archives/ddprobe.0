Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C6015B7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16858C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677117906;
	bh=cDzJi5E9i/b11kBJmSkaJf/79UgUPPA2K3tYIJFOo6E=;
	h=To:Subject:From:Date:From;
	b=uChHYarhwgSEZFUfPydKGrwqnOD4OQeMs8WCVLhL8qRwFR3M/BxtmfqSQU5tepXLl
	 +DrGfQDw6Cbiv6/UF2xR79zRG/US0+Vnl2vCBp+hhk1NOgoQf1vdhQPxmSxJQMJLpH
	 jIKG1Vw2yuF7mEP9nPq2eZ+ha6KOTpyjRhvLs4rnmYpqEa5PMg3p52OvdFXi7RzqNJ
	 Hb+iVSwIiNKPXf0G298qxAfIBQwINM9aPJWBtzTnr3kvtVq/OyWnsD+WJA6deJUVnS
	 9KJtk72p17odXwQd8H9LQRfySIAxaTds6GtOIg/h5S95GfGWIS6RulQfHob61cAoAw
	 H3IQdfFbnXePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDDEBC636D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167711790593.3858.2088720178467020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2be67d3daf8108efb0b0889116def5b732633568700db9070083d9b3bf9220e
Date: Thu, 23 Feb 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677117905
