Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DB37E
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9352C433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690762328;
	bh=G1tJNuyJtWDNqLsFyGE1qZbLbRC+UtdZdtKOXuPgo8w=;
	h=To:Subject:From:Date:From;
	b=FtkzSZhfheIH7R2qOnaxWtBzy+j9ICZW93GTFrbK1Vyc8kvPQJ+Gx7P8ja4HqRAHv
	 HY9gjmfohmYDGfirBgqVxSWyfXw2hvqccHO9WLv4xgqdkMWmVKtWeUaGSChjqDWdCa
	 dNbEU5MjspAQSz6nhRCOzNo31LpPVwouNWNeNxH072imRNq1SiDmVJwPmRIg9YwZ6q
	 EdWLBVl3dXMKhkEyjR/922S/5C2rYmFlJNg71KVI6o9gh0NdBTm+DYlQ04Sin903tK
	 3a8EmYWuBnP6QvTtv192pUM35dwKoV3QrfuWYdwA314WaaA8BBMSc4h9MdlWsA7SwD
	 8AR+iVhLQlWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5421EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076232869.25546.1252376663767930934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2196f64791653714e778a54835221e1705313a5abbb9c3f7c345fdeefddcab
Date: Mon, 31 Jul 2023 00:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690762328
