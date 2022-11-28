Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C6F7E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB2DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669599654;
	bh=nF1PjnuAyesPrnknZ6X5coQ6/DPhi3hgjwGu0Jfgozo=;
	h=To:Subject:From:Date:From;
	b=oIjzEAHsxt/LCDvR7ZLwo6pHLjK/5Vo9xA6pP6a+Rc/IGmX86O7KkFmrdIrVyRQVi
	 4JF8W3BOsSszrnP8bfVyJJdnXiJWgbUuS+h5NPUTbAjbQGLszYZfi6Qt2ZOv1+MyHG
	 cPJsam8xUQ0Ng4hfu3S/vnQf9x6CDevIFr5JcYOg9T5NkahkVtbg+fWLlmIy5dtu3F
	 6QH6xH0x/OZGlIwLjWmuvf09CZDK3xnnkWehfNBpT7CroPmEwfKXX/zmsvUUIsqVEp
	 Xoi9RQJetKQ6g9DzCxrX9ZrPx1OALvRMLYlAXG99ZbIIKKEEH09VtrclPDN9JvcTvV
	 A11B4Xz6B5MaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51041C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959965432.10289.17144823680488273296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16d921697263b38aba5ae56414ce742cfef9f7b031efa29840d17065a9aa646
Date: Mon, 28 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669599654
