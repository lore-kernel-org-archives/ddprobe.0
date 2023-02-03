Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6351FBC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3886C4339E
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675420565;
	bh=Gewq+fsfAeW8ytbP7jzUWDNE19yfRnwrSLUgyh+fyB8=;
	h=To:Subject:From:Date:From;
	b=JLDgHya7gL+Dsy69aDVRJnVuChkc50FRIC+7EysDjeNMsmUXliUlYhv9GBSXSZVBc
	 mfir2+sjdUfC8F+w4pUgJlpnbXtHSckvS8jFV00WPZvYGLnHf3LPuT72u3XCBbHxb4
	 l8fQlEsULE2BxbaK1ht/CeByrDIE8RAAjIsS4bPqCluxlBCYesDQMg8uirgKdUzgQU
	 HEEWPh7l8au8xinAYB+RHdLZwqbTgVqYunQimFtvLl96OeC06dlV3khYB74ECYBOI1
	 ayxC9XEiXpAw6OApENAYmCAc7lNCKqVTAaQeeSTLfIEp9KZ1hXYOPSC6zQreKcZyJ+
	 SAF0KBbZFNVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AC7C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167542056574.23701.16735384325854847296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8218bb6c23e7cc285e598c54862c17248d752b439f2e999e2a03eb54e116b16
Date: Fri, 03 Feb 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675420565
