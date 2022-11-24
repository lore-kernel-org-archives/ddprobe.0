Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4EF1C05
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70748C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669254054;
	bh=tgkeBMqMUkFI1KgDWHe+ezL7ybPiGmZI1hvUnYXCeFU=;
	h=To:Subject:From:Date:From;
	b=Y24dAmIl282uMCExZP599BCgOskVLa+zY9F72QbKIQZyIGW50IwddlHXqJPt4JGuJ
	 SH4B8IOWxdjKpMHXfqyTW+pfmNQwnESaH4ieembjM8orKRrQkLylTtqQRRYlN829s8
	 icr+4OKulnLVwQ6zNzucB6kFhKad/Sy2c1LewgxY5OmR//Nt+WPvtPeDzp418iCfUB
	 w+P2ZAiKcSWTFjTF6DUGsy0JXFt/hiV/btRhWMaYf0XNM8s1jIR/JAk3xLaQaA7uii
	 b6o5Y7AxMn+aOkVhFxuBnoB/IoJcHMrN1MCLCLNYmIAB/XwEYy6A4tIHhYbVai8FBG
	 1vq5J0Hp0IxKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537F9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166925405433.29898.10717691874360140485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9df9cfa10e8ebb68adfc340ab6481ec6d3b58950ab135645e212ce1183182e
Date: Thu, 24 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669254054
