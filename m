Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9B41841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6BCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661393452;
	bh=sGPDcIM1QN2TdkqJrXLoXtz6hleRJKEjU7iqvsfCHrU=;
	h=To:Subject:From:Date:From;
	b=pJbqyxFVyuxBOMJuj42YyZjGN+gMeqneN6k9MYxx4IDqcEe6RdQx6u1jQyyJ2Y1rM
	 eIq5zr0WxoZEwqU2LUvKsTAhZnqDdphb48zl7SFW9LxOMeay98dksYYVi/S0RZ/eLz
	 80QsmcA1BDM3GUe8AwqYeuW0wbEc/+wAMSFNRYxs9G+hjHKR5TTt/Qiwz06/DzuUHJ
	 O5unS8EqDuT9vkxYVDhUCBF1U0u6In9gIwG0yWb+yKQG5k/RZqseoPAMPcPS66YEv+
	 +z5JfATLu32ke2lwcXLNY+dlnvrbuxpGxUp02YbJMN3N6Bd5srdZPe/+/BHvAEeCAx
	 5lwtD9U2h/SJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5107AC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139345232.5326.5999336808842519110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004b61aa4bca2799739dbb2fbce265a7e90213d16ac2609539fe33783f6e987a
Date: Thu, 25 Aug 2022 02:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661393452
