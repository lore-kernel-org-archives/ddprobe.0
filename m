Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FD84378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647532284;
	h=To:Subject:From:Message-Id:Date;
	bh=iPsY7+p+WIg9mTSaZLvmucK2tjQnMP/HoNdd1aOEE9A=;
	b=EstLYB35XF7eyv4eOnPIQZdGa86jCOEJX4uEG9qGA8FlFxAN71u7xcHNiZ80tFAh
	cY/WiynATkRVSmxZm37v0GqFlKaMvw9ZnrFIflNk9tBsLCH4ndqPX4aO5isUGx9WPLo
	iRFaF4h7vD+k+gXbJCqcxzFnTGPnPOMiD018xpSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647532284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPsY7+p+WIg9mTSaZLvmucK2tjQnMP/HoNdd1aOEE9A=;
	b=H8i9dldv45gM+d/A6Xl958NwoScLKbgX4lL3dnAO4iKZgO8WKMDkJY1iBaaDJR98
	gTROSmQA3dwmEIiGAZoc82SET3CCIu8XUL8ADYMQms/qbc4xdfUv/2tmel1UYX0Yklh
	DcSRRGA8y5+9F2CPQKaSEoRIZxyQlS2w2xapKH9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98939b5b-ac87c2d9-6967-4598-9db6-d2c2a95b5790-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26f28bfe4fe4bc3c21c0f7c8c4a01efef2804ec96299dc4dc1e1022577fa46bf
Date: Thu, 17 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647532284
