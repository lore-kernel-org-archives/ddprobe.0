Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD362F44
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BED7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666977054;
	bh=JFFa8AhgtQu1x2i+htYJ+IfET3cznjT/zS7hPKWbShI=;
	h=To:Subject:From:Date:From;
	b=ApCujdtAlQ03WdoNE6gia7uN8sDrn96/Oc9G8/t5jLRu4U+sMo72pgk8SlXA6okBI
	 S64bM8sn1WlOeL5xn8LjPfuNxy5iy0m7nUn3RuIBj50Rt7RnetbJWM1YPQpuzOlJl6
	 R8IeESMdJ8qGLIMQcdgOnT239AYqdeUYUcU27tPiUWA/qk2HpZw+3EfiLMyZkjc0Br
	 nL9muI9hgA08jQC9pUXbrEzKMjYAdVvOVRLG3Z7sHl7iuWOG+uEuut9Q33vhgxi3Km
	 EmZLsvCKiDgUyc11PlsXVBLUrS1QepeABlN3UFfcyG68q3RO5IbBdU7tQqwtxvfmD5
	 h2rJZWylj/GYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55837ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697705434.13123.17644134583413473004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30109965a6ddff369078489a2486ec548d3c409277727fca022dec295cfcef7
Date: Fri, 28 Oct 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666977054
