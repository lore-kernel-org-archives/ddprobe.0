Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9D117C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6778FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664786453;
	bh=8I89staGFKYiwYHBZypIavn+uPG07y7uxbwCP0386I4=;
	h=To:Subject:From:Date:From;
	b=IveSQ42Q37jOplIzRIo0iJA+QrroRP0DZdlQbZDuh5PkT6zkaWPXlVBJHWi+ndBVj
	 b3fLHtxYn0sBiVYlH76LoyFWfEEjnu3lyMNJSnnX8R1SgPr+if/vr1+j0cMWiePDvo
	 jFxqBOsfryY7vxVOCXw/y/6mjyk79EwORWR2Miq2KZFXbn/TWfi1vXBzyUPkES302R
	 C4sl9qt3HWSlXkhhwNvDWcxRWFc2iWZG//yy/eEbhRofJg9ADXa1WKIR9RY3anjLOL
	 DtdQpwNw9UmwCs9o104Lb4lmap/yTHggCJh+YExXNKjPRuAshwOlvgJPxw6A+IihLd
	 bz5ikkg/GTMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DA2C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478645332.12532.16849477011044477930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc92673ad966058e9b5eaa0de53bd806ce360248a7b62448341034e84495749e
Date: Mon, 03 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664786453
