Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6DC8C10
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 10:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRf1obSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF842C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697107628;
	bh=Zcqz7eHKLkH74WG0FOiyhmcN3oFBHHe8g/PhGaGArJM=;
	h=To:Subject:From:Date:From;
	b=kRf1obSGMPEb88l/7sJOmVzM85wK/SkSazSCcEB+i8ojRMk+Q2O4MEuaIL5r35SUm
	 1iCw674pi7HcHF234wH/MrjMynuEPkgKuctEagv+xhF78jVFKClmQoQY6UpxBAHZUz
	 /KzAXT2rXQz7ii4lzm7+M0GNNyN2ufNH/979aZNVIupYFOSOP+lWBW3YYxWXqjusTa
	 f7mHx/WlBbLGGa42lRnXRufShrl5JThuH+ANCnxatJzmvIj6WDWmXWiJ2tnHm6pdrl
	 eV8nR6a0THkDfChkrWxK1ecLrcPso07vY5Fqp3Ok6nboEHTASMIVyw4CBVaVQ3rDyj
	 7jq2VDUZ+KvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE55CCDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169710762877.25856.2262825743681216862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b25e9e929d78b82cd14df60e17fe7c9e5297682c2b3c83a068a00e474a8e84
Date: Thu, 12 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697107628
