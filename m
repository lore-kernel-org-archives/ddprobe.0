Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4D57B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656548812;
	h=To:Subject:From:Message-Id:Date;
	bh=Saw5PoUzjlT1g7DlAgTGqTxidMd0DibZy3jui5c6/Ag=;
	b=KHkyZ2h73Ny9v3EyXvjXSlYmtxUJ4znTlHVKwRNxw1PmHLK1xHoUp6KB+w+xZxP+
	tEdiTDXsMWpL//BjrDpNYYKxIEl7ijhAEEMdZNibRmbM+bfwES5HxfODhIns0yfkwe+
	xgqLeZkX/Cptw8NwA2tGKFE2dP2o5+FpnYsKL5Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656548812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Saw5PoUzjlT1g7DlAgTGqTxidMd0DibZy3jui5c6/Ag=;
	b=gMpIzyAzCrf9521GXrTmzJCYRlOt47yJSUkNzTPJsfD9TBVJhjprINhFyUE60iPX
	zVxPsO2MsoNnKC75aG+nXD40p1rI0EvrDUkHkxnmqAaENRwVmwVGRFXi9BrazFCXPiO
	QfUOsMfoZ3Jn6olpvLddYumAMYsqRjII1dssH6/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b200e606-cae38a08-43d8-49a7-b713-bde00048d85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c71784be7ba035b626fd1871b22832e90c93f7a9e08b3902bc62eea77bed806a
Date: Thu, 30 Jun 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656548812
