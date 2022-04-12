Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E107033C0
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 20:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649793958;
	h=To:Subject:From:Message-Id:Date;
	bh=+1VA/2r8RigjmAjZHSiVsxI1eWZRkJ2lZ/IXAhq/qqc=;
	b=fSnJpNDXuB/bfRZxrmirrZ5W9kT8VkcXtKhrs+TW19cQkfz+AVrsnYbBwET2u7XW
	OujwYOWlFMVhcJECTORGKBkj+JkgAWKMLpUe6etkL1Lj74XbQq9k4mJMs1Cju2VtJ0H
	7by8VR7lpqwJ9ZgRFcaAzDwx5TLExa0nEipFMvKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649793958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+1VA/2r8RigjmAjZHSiVsxI1eWZRkJ2lZ/IXAhq/qqc=;
	b=OiCGpayti67DdmocI+X6egtglKVElW65WxQMIwweaXwFcrfs5cRE/J7qP0BFI81m
	1GPhdagk5JzoRz5SZJfv6jOwVx0WIJryo6CpnYcUOLiTAlQ2/vJnzXmlfIqp+XmxYC7
	h/li5aPbwPvn08HA319Z2/gkCSGmnRTWrcf/4RFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f620180-68d8676d-f41a-466c-a208-5d9de511ec46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a343cda99e92057f8fdf794b30e61bf3d1dcdfa9f8ce2875ff02c93acec21428
Date: Tue, 12 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649793958
