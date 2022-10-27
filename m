Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8A133FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCD1C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666885854;
	bh=ZWwmwI0vLr3MNE86wttwRXFZAnkqzPhVM5K0lwEk0gs=;
	h=To:Subject:From:Date:From;
	b=qAHO2FcvRKNYlxUuBH5JFz+kAp8nI2VOIo6oc9WQU5AWcIsJ48UDO14l6WH0CUjwS
	 D8Y7m9Q7SnCaQbdgx1/bGlUi86RDmycGHjgDJehq7CguhUTukyqBa787MVwG4wWmKS
	 hyoZcF39mCj5sM3dTZnc7gkAwodhAXXLV0JqF1oqajy5VW1+ZKPcQH+mqFgtg+hWHK
	 w5D37jwxIn0/DDD1Qq9jXTEedjcKJR3OFY1J8pjPXdHg1k1PUWMekttiv1Uww0HHIR
	 F/2tTbwC67jRGKZrP00u7xf9xEJlqH66BlAqgKO5P2MpOs8IHyN8e9ssWFjmZafBsB
	 lgUECk5xuhe0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F309FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688585431.19860.10748250381359944459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b3d01fde28d8b8c365f753e1cb668b7ecfc6e572417396d1fd733734eca847
Date: Thu, 27 Oct 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666885854
