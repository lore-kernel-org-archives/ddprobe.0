Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B689E3670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645070485;
	h=To:Subject:From:Message-Id:Date;
	bh=fRFpk8iAhnI804UqX6+q0oz5kiK8+BFrNWwhyAxdQ7s=;
	b=DtwPfCkI4kUyDVH0aTnAuBunjACSlclOXW5z4BosH3bKPJ3u92aeqC0QKS5Dn/Ur
	3p62Vlzstr45Kcfk5VttuYj9HPlfAgeMiv2n0ko5jRdZ8f9BuP9Bx1yDKtxqxiAIK49
	sDkFMHrslYfPs9QSHSYSH/Iw2rG5oFQUBXKYoRyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645070485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fRFpk8iAhnI804UqX6+q0oz5kiK8+BFrNWwhyAxdQ7s=;
	b=dLakDWRgyu0mO8V3ov+9Q00T1tXCE6MCwsyOtONyo5QAIt+oqEHSuRGpEKMAfxbm
	6vIr6MaF6FDg7qRNlNHbD+F6NgtqOOejiLs46KBU6lBfnsAYYW2/LEoIzQs9w6mpHMK
	5eZQudcMguKrNutjQ6F6Megu25cnUMy+adnzWLsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05d78574-8fe0112f-8313-40c2-bd76-1457292a877e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d5054b598b34b9dbb328d4f64a9086e80d1210e1e1c594914eb6ee4dc1c850
Date: Thu, 17 Feb 2022 04:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645070484
