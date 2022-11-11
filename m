Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D936927739
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E4DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668204654;
	bh=ny69XXrqvM3gdsexH0ZeMz/L2ewk0R51rJ2fqoQVYtM=;
	h=To:Subject:From:Date:From;
	b=I6VLH/acSExRAgcsumZ8eE8zpKtj31HNJcz9QSIyxTUVbpJfWSQ+PlHsvlnHN642r
	 wkTtoNfsrKEnzc2EZCmHTN2traokZcM5BpJfeIyasMxL5ttnVuPIxn++ZJxE3fw9Dw
	 C3XY1mhQHFw3HrsRJsgulYv00g2M7sw+Tzq5u5SC7JUrAMsMaqK8BZP0fFHqWOSOqo
	 Hb6apGqNk9furBm38utjh7fO4vnIVuPHksx0Sx9Fx+ghsHEvKVoMVcWoaFP+ADSsbL
	 x4kSecnk03WJaUOYwVSjii4/5x5WYy7NOo4LFC/OBxT1Mwmwp02iPYroIGOTEh+K9Q
	 DJgsVG+uULVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C29BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820465436.25599.634986496390920445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c4a89143d0ec28ef66a23d4ec5788969b50aa0c069bb98ede9a81dfde35de6
Date: Fri, 11 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668204654
