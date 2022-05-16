Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08934A52
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 05:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652680079;
	h=To:Subject:From:Message-Id:Date;
	bh=MA1VIzxYcgOoMd2RmBhYNybpGCvvMlivjyAaK/6yN9w=;
	b=F/KQ6bYoPsT7DuLaW26eWbz+nADqy5FdxqSoYcRoBExzlmsUlRnD0nNfBpJxn7pr
	Xe1O+P334I4NY3rTjR/AxB691q+QCnrL1c3b7NUx+FrjyxMgYjrTSD3JCjmwt5eMYhM
	HktJCTQLmpv2/SXkzZSanf5bzqxdN2pDVlM7kJQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652680079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MA1VIzxYcgOoMd2RmBhYNybpGCvvMlivjyAaK/6yN9w=;
	b=YuIQCdY6tEDkWqCGOARFHQvnbUEw9KzzOAiCrvfsFfeDtUJEU5epf+5HdR7/BCEH
	GxFknsC/WxLc+JlB9P7p/2c3QfLRZhqXO8PH/Sx/qqeHxwspS+G2jr2dtrW7pQUKyua
	fpd+h/xCHIB8V7Zk65On3CWYcGQq1IvcNrr6gj2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb68b7c4-88e09b2d-759a-46d9-9a19-ec65b2d14e2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfd21461e0203aae9802dc25cfa2f39137d70c92091c70ea61a46ece1200647f
Date: Mon, 16 May 2022 05:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652680079
