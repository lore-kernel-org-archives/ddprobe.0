Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F4033CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660645252;
	h=To:Subject:From:Message-Id:Date;
	bh=mxnViJnLHNCQsR5vlKtFOp1BivSQGKYCRiua951v+r4=;
	b=FRAIU21DWlGNQ1I5NDXZFQ+mQtfAYOVxtKpEmZMP3d/j9hxJe0nAx+qTutevaQtP
	9J0ir9UDxu/w6EwzVWsRFtthWjzNWJ68eeeAoMho3WY2WbWcN2s78y1Okl+k+kPkQ3W
	W4S+RHIX9Cj9YwT+qfm0BRI+/Aj9eDkdYcN/T8EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660645252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mxnViJnLHNCQsR5vlKtFOp1BivSQGKYCRiua951v+r4=;
	b=ItV04xAq/XpeQ6POFcyW+WKAIrozFWKImRWRgpt+djzaNAa4lbVGFWDCR4tCmsHm
	p7TlqduLVFVLPvoB+iUKx8RmReh7E9GZFX/XVp3pEASuxXPalfxItR8ufOKeoR+DUfx
	kTHqyPgxbCeqfDmE2kuHKs2s45jHOeNeHH4icBKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a62b9e1e-64307ffd-8cbb-4e0d-81ba-e2dc64ef2a3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc72f27b45a13fb2d6ea48ff26c9770770e6fd14f43e0ac65533729e83d5d415
Date: Tue, 16 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660645252
