Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317362F48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3688C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674832985;
	bh=ZflzUWcYjf1QhE6wnqbQwbrsGx/uuhj2bWs3LdXggZk=;
	h=To:Subject:From:Date:From;
	b=aE6p4iiutnh6aoSLl5Sz9Iy3pA28OHHfXKzFHovgWh8yNioMqSKJlkimdzJpZRzfi
	 9EhW/8+uFJ/W9g9KBNfffqQdK2namvy4Xqtfepa9huw9p8x7pil2sgCcY5MiQ3OKSJ
	 sG33XTA/BaTLAwoMujxT/0UFmDz7C/hG9nKoMh5hTF9F8z8JEXcL/ayKWrAJ5uKRim
	 FjS6T7K5Yfxh55dv2aZrH8sDHKEFjlXI97AxVb91iLu2FthDNwjxYd3e/HIAY6P95z
	 UhrqS764sxn/q+qJyPmWuK8nUVvh9gO0tmZWWfovg0RSkFPP4SlaaYwq2MK0FlWJbu
	 t3TV6PcVUY26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7483C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483298574.17517.13773447420950919742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5601781780f6981a66f76bbf45b918b7581ab93db2c96ceb8e7f1cc1c4a9d4f7
Date: Fri, 27 Jan 2023 15:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674832985
