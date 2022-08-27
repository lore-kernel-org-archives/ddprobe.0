Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D8023AA
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6923AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661558452;
	bh=A7ORJCBattPr5m7W65RDqIFNuz7cYSZS747UtWKg1LI=;
	h=To:Subject:From:Date:From;
	b=hnuL+fY1wIRXNsVBwltcrBpzz+9Gsx1/Mja7KQ0AlpzNGqxK+yyBmVGr9wjA0aiyD
	 WFO4x3hythGkHffvhgXYf5Gvh8/ou3MSVu+t24Uj4jxCFBHi30dNiKH1f639M4V87e
	 EFZTo4hlS4D7m/azgMMtr/wZgEtNldT0AQz7ne3SxSlpV0qWF6R6wX+qBTJP9HzV6q
	 OXx3DsYmYKOsHtPV4LFfUm06ZlSLEgJcEOBDcy/EM0gdju42jXptZ7UDzeeeaBXWJS
	 N8C6kldQhRUWFlSdiUimWb4qj3QYL6Dem48HIu6BhsA455LiGZedKXHvbE5r9AeElt
	 hy6Ns1FKm1STA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53171ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155845233.10029.11337836619845925143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b75d06f417caf2b25dcc37d76b6c92b02179e6038a5d9d4372b77e5ae5f4ec
Date: Sat, 27 Aug 2022 00:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661558452
