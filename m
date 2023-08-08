Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB98DDBF
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C765FC433C9
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691488988;
	bh=j5xqe+AzXEb6QoSMXUd0xml5FU8p18LMd4mkxUpnLDA=;
	h=To:Subject:From:Date:From;
	b=l6MiHZqpQvigVorxU547DXhtCDQSZUz/oNGz7NSQRIhokV7KDFUce1zQPzbXRO7x+
	 PZEfns24QA9NHb9DKm+3rzjPRA2Dxr8F3kVFHDXnfBbG74nkDQIl6LnD5A/6atEeOv
	 8esHlaYW+/d0Uv1ghOyGTW6D+SLfnEF8oxMB2SlWEj77FI34p10x+DOm8sAg/xRx2t
	 ycFR8XdoZ4lFbW0DfMlJ4ugdumrgotB6qlIFNTw/DLX5gPqry0OxNfn2oQbuaW6Qc2
	 fgyhG3GGYgxvT94FYLWXxtakzLXhoKpS9Gx3H8MMoae06AT3LmEIAa0Tx5XgKqxAxs
	 +QOcoHWwgGJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A772CC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169148898867.9321.7462235800012847390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be188db0cbbe914e96304c4f6f917edb1c1963b0f7a0f4170898ef5bd2d1cfa4
Date: Tue, 08 Aug 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691488988
