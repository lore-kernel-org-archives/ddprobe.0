Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B589457
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECC83C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681239126;
	bh=mkLSdudR+iYLjlkT5PrhhLHJE+vROzh2sJcrnWEzPBw=;
	h=To:Subject:From:Date:From;
	b=aD9ZLIyF4K+yp+SLtNnzc+ywFAdcMYsD2oBxbtCa8hxEntdDIDmp7uNm0aVbd14w5
	 /7A/Ope6wMH8KGkkRnFbcex64OJXxOBqCP0TF5z7YSYNKVWvU226ABoiQLt5qAbQtA
	 iM1LZ9Wpx+GLiXG/hol2tcBMEVU6xMz/HUij4lieFhI0bG++Zig4Bwa3LYzWUA8M+Q
	 rsDMM0INp4+BPMTU6dx9oOfoBDCq3QQ8APpsHvujvPf1pFhQtu1RP0DoR1YZvwP6Ym
	 oshjq8HczUAmouI4FoeXa5MocaawNIzzoCY/yFZb/SM3hSjx45gfrZo7o4OJtsrZlQ
	 rp4rMU4xsrrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8811C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168123912581.17980.6410982769287892036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1060988afd8cfccdf8c75a47004e2399d99bda83b59a90ffdb6514b6dd1ce42
Date: Tue, 11 Apr 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681239125
