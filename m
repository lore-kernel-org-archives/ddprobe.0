Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AFB8C08
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F538C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671231087;
	bh=LtMgeq43HbMQRGSZey2oJZxtLLiRb6qwDxL0yX9vJlI=;
	h=To:Subject:From:Date:From;
	b=cxQQW4o6PCLvtuIBVEYh64LuO+jYD8C24hH8qRnvzKf7Ztkx8+KXyt0QhsoKAXejJ
	 CPqjpeXUAn6I2aKo530SRmcbwq1aVqx665Py2yo2dGbCv8P7igp97vJs2vYjD9V7J+
	 kVzkhEFv26XSptaWB1wxXKo1YLmsMdVYIoJZZd1kJe6z8IPEZ0zvFsm1OOFRDIbz+R
	 dBzWMwVJ33X+0GirQclfL03VrGYLtzGym+UQgCfX3BQlbqPOP7stC2Mfb3GnKgB3c1
	 4oSZ6HnE69Tf1wNN7b5+5/+kM3KXz7U5lIS4x4vIEQMPRSD+eu6OFWu/XtFPOiN2D8
	 SMsElao6jgnFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63741C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123108739.10049.12781878935161562063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5123f2f277f7c26fe0f139d716cc3314bf04867a649ae378fa4b84e361d39bc
Date: Fri, 16 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671231087
