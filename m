Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4AA3234
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646720784;
	h=To:Subject:From:Message-Id:Date;
	bh=JNCXTYhWZGQx/SXrTyLlRA6Pulbv+ymYy3QKlEx2Xf4=;
	b=e7t2/CIQfdnMULSd45n+Uy1OCflHj1Xe0UhsROqgxOD3r42Q0w05Zglu5bZgqkek
	jD2N1kg3mFo7qXCvqb5+zUxeF9F2X+cLP0DthAi0P0r9QTe8N48kJ3WDtIhZml27TtE
	fJWXs3apUDaUEAM9W+RT+7JGJ672WmOyWJ8wPo5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646720784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JNCXTYhWZGQx/SXrTyLlRA6Pulbv+ymYy3QKlEx2Xf4=;
	b=ZLm4PUjWAob4RjYmqdDzmZ9wZjcNAJW65NRdW95w9Y6Xw8tNbDxicwy16CQwThAH
	uXiRGa28f7yUK1csa55rJXv2Q9i3ydJcxro2GiVkHbRMNf45LaBkZ2BX38PqKfdgTxu
	stAmDutuKcX5J876nHhf6py2T5jii0zcdJEmOGVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6835195b-364667d8-0de6-40b7-af08-a4e964d175d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a7b395c15f91d9e3c84dba00761fc490e3a8f9bd0708f0a84e889eff9182e49
Date: Tue, 8 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646720784
