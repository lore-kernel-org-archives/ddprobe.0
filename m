Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0375315A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 03:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650683038;
	h=To:Subject:From:Message-Id:Date;
	bh=eGTXw+y269v4yUJizmxmcDidkCbj2Owbncq3vrguOZc=;
	b=d23BhUrlPr+NcQ1O59b/qotyWLf6Ay9bGbK3fLPl2yRz9rsOmbpG5Nkl7IzfDxH6
	7cCldhmtCkKO/J5MJcJCJO1TKKMvszZN59X2AGlbnixbFip5GS3PAxUZqQfV5Yu6Qpl
	MW2BHy3/VXvLJhZMpWCIImwuL/rEgpCD1QkF359U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650683038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eGTXw+y269v4yUJizmxmcDidkCbj2Owbncq3vrguOZc=;
	b=fgARlbmQ6XTHG+pUoEWnGNWmpqO2AWFBAS3EtZ5/lkfgBdCeyCv1IG6mS0pFIXSA
	mmFbVNYyIip6p4NYqcuNvJuVukLJCfwgLjcdcc0dUZ0Joe9CRNZDmfS8NvGI86um8mh
	U5mGw2aDEUUKWVCMQzcVpVCoFfx74BKN5KBt242g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054604a4b-0c4c0178-937a-4bd7-a0d6-75c94914a599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5122c32808d4db7e68311769ed6aa5873814c674def1e6735de538b78ceef9b2
Date: Sat, 23 Apr 2022 03:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650683038
