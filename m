Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB0B644
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 05:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05C0C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 05:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689138488;
	bh=8zIL4+v5RiF1q5yBDVFyewb9H6tONFRgIPmxHu4WH6I=;
	h=To:Subject:From:Date:From;
	b=CrT1H9T4mn4gKH8S7+JN9A1nz2Nh3yq4qfIkumNw0jmbSnttMEbV17HmIAbJd1FKW
	 TJGLFwp0T8GRLV+tgu7u2WcIuuAzZlPxJ0H2fkAx3XFKVRUdYaD4OdrnKLpmw6KsbE
	 oarRzLEIPPUMczeB+sCwkKiwqCn/qROH0pDhlQQ+frkEPHAajNnoVQJEWC3l0jLhln
	 zQbT0hafrFDmtB2X84t3LZy948yuSpaiAM+iaB1hfWs8btHtS4O7sCrw7uLAzUXFzW
	 N3pG2FBHCAHAw7iqlx2KOS3/dYL8hfiYDbIb4U1NfiSQ3ULxQdfDxqXhtyn2sRolXA
	 o5ZarEYi4OXXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B376EEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 05:08:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168913848870.22712.6224935463468935851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7dd97bbe25129a5b87dc34c2c854fdc2bc04bf027d1aac21816b05440a5fca
Date: Wed, 12 Jul 2023 05:08:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689138488
