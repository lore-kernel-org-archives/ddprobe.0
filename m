Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490321640F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1CEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689024428;
	bh=TqlEYAKjqSl7XKD9fSx41IXluiTIE4nukAHHgLy7fFk=;
	h=To:Subject:From:Date:From;
	b=kaUpRrGwgcz91YAkjJl6PUtpVTnHCiKLkHPFeIGPuMNZaPqeOlsaBputGCYWNHKzK
	 TPvtVEzWm1Os8mXuoSiiKOVtxi4US74dJifu6OBYCmqDzz+9IvzU1SdgH2fhPFPHhB
	 +DohDJfoF/nuRlwYbgpddpo3X3QRNAzc4vCHrGdkR5EindExYH7633Mb0Zx+PGfe8S
	 OlWMSpZZBkRWQplTbS4810gCBC2/p8MonKzdNOzAHya2K7WjRcoy/HZ+gUH0QhWBR6
	 nkAVFmV4SS8jzX8VaQeubgWv625nRUTEezsDz4z5QugXWWjrzTMbJvMGBpapSRe1yB
	 pqqXetzqNGhZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B305FEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902442872.9136.17791132171331913545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0f6ff68d5b44e717d5e58032a87b42623b3045d7b7c1dd23645a2a54148cf1
Date: Mon, 10 Jul 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689024428
