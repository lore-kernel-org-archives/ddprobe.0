Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F98649
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657199212;
	h=To:Subject:From:Message-Id:Date;
	bh=xiPJqVMA1nM6UFx+9nq2OvktF1AneppBanhMWhUzQaI=;
	b=b2qaqg6wgS51f1DWl5HDDPbVrVc/uNURL3f1amGIv6C6OSXiPka96TldwtVvtkAY
	gtakXVCaVpiogGdFS9VcFjGPN7HGnYBXIiqxVkAnlFvQdep+23ZeuHG4wrQHUutySoX
	aqXukwJvA8I79AUDHpkDkYAmaMd6MG8X0YSquxPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657199212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xiPJqVMA1nM6UFx+9nq2OvktF1AneppBanhMWhUzQaI=;
	b=Jg3vatkXJJ6qe+1EUwbffRsklpfU7Sx7etV9hnTKo+JrgcFyXY/nEN1BVA+coscP
	b8H0E+Vao58kxq0eTSSXCN70lnJXnq1SMgeUVTSIyQAB+fnuzGczEMwaMeiRcCBkQxP
	PQTM7hNWRARaufo9ojv+eJ1xkIK6ulpLdHMC7eLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8c53735-88156654-5bbc-48dd-975f-5cf929033de6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12bc88051b5cd641639c3c41099cf5f1e325ce24f7df5589c1335993acc8237f
Date: Thu, 7 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657199212
