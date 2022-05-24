Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256CC629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 01:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653357419;
	h=To:Subject:From:Message-Id:Date;
	bh=O+9oICzacTR2OUDhWuConczNWOrWWS6c4VCV/3FnPls=;
	b=VvDsFAPPb+MvwbLtRfAsyK8QiYUA1E7X5e5RmAC9YyOnfSzX/IFEtyLXOb94AJKD
	C4b8mUDnfvuGnWAVExS74BUGSR6oBWKM/4qSDJ7j2r+zaHzvvOnoE2jrt61WKnilan9
	3ZAxM+Jk+oWDjTh8RD77X2WFL/7NLd2abxg4pB+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653357419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O+9oICzacTR2OUDhWuConczNWOrWWS6c4VCV/3FnPls=;
	b=T/9qnXQJhbOGa67vPeygCYAxo1lZmwtzyV8H5zYYqA8hDhiwzh+rPZblPLAxoDRt
	WehDIkOhWPqZtD7yS46Flo4J4fiSmniXNkXkSNs54uI2rUIy0EAeQ6YQQDenM3HCcib
	bANuyds24pG5Hj0Xncvpte1HlGmCdP9Xsf82zyl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3c81b14-12951f0a-364e-4c75-a6b6-1c4f4f07fbd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efac408174c034d7009411ddc21b2b3b7b2a76d9bf1e4409094954d1677062f7
Date: Tue, 24 May 2022 01:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653357419
