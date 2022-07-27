Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC017EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658885453;
	h=To:Subject:From:Message-Id:Date;
	bh=nsOwmDFc2uW+3kWzGm5IyEiONuMqvuk45Vr8tP8YX9E=;
	b=YzCbVlnJQ8dev1iqRWWXjwxMfnN/Y4wyibDSY9mg3uVYGqaFTdGruQ/wVJUbUXz/
	zsbEXp3U1/7iFG1LOu/6d+M0sTanTot+fBtLxrMPcm5uUx9ktCJ9ij5wq56t2uxJG8N
	RWgOJVpWKD7AG1t6YzT/Ay1LheU0MxPvPuFbJ0DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658885453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nsOwmDFc2uW+3kWzGm5IyEiONuMqvuk45Vr8tP8YX9E=;
	b=KXZkim7PETQ3+0PCA44Rus6nfqga8g+leSuVyBAS+GSwhODM6eN0RyfyMdOseJ0o
	/JGn9rt4uLDSGaRzgXuzMHNA6CST+A/MgiGwyNAyrpyJfrwqdOACzQEuUNBW8+7pQZN
	CZ2SeUOu4Oe2FXRJ9vP0N6qAErraopJtX5mRfhwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d473307-1506f840-1605-45ac-bfb3-5744532f1cba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d79122724558694c1c649019a6e18f35ed69eb9ffda23d549221929d48a3e298
Date: Wed, 27 Jul 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658885452
