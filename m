Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED683C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD4C4339C
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682084945;
	bh=r8doTw/jY1wTkpckir0CmO7tGs8TfmqdxjS8HLvSW7M=;
	h=To:Subject:From:Date:From;
	b=hRG9HqPwj1DICmcYPX+MZtwu7bWDPxPPRzTegduk8PIHIjC7dAYwjTl3DyGb38zrA
	 HFf/RGBCpIgLr0astm45UJZkneoGuxOmdNEkuag/Na2Z+/by4lXmvq7t/hRNbukWMT
	 8D5vPAcBpPOdacK+tWnmuKfg/VnvbNobvcmorbb43zeQTZXYrNz2drwgQ2gzBkBsBV
	 +ufWMiYSU230n5I8UADe8XRXhoYIQOPpcdMROqG8hDJqNf+21RE7IdLTYAF4FYx2ek
	 4rniWGDL3gLAV99eo1sSw246cHt9upwOIjZDBM3mCAg3vE4OxsQnazvZu3YlL2jITN
	 w3AJrcr8sfiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B684BC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168208494574.8603.2703827973995246596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3c0722bbe3f5bc954df4b8b2937460605f8e2b531ed5c6dea352021457aa85
Date: Fri, 21 Apr 2023 13:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682084945
