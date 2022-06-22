Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD593137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 12:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655899259;
	h=To:Subject:From:Message-Id:Date;
	bh=RJZ6pEu508J0IgDBHiymz7dd7ikVfUXNvdYEJd3TcQo=;
	b=O+xyIES8iIKvpGbCmYv1kkHib3O9lpsrjIED5XB2y1gsqSieAZPFARMvarMa+4nG
	ZD1SM/NbJMmfN/WQwPQyMsc2CLDthIsSjDKOiSkhee6G5b6ixrVROPbwcKi1zA95bRk
	pUuE/NdTdIEJLpwud0IOTHpd4bsAZQjdaZclXqN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655899259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJZ6pEu508J0IgDBHiymz7dd7ikVfUXNvdYEJd3TcQo=;
	b=FMcqedmBzYOmS5A0k5w0YiyzeTG02BjAUP/+GyIuanBdXxZ/ND7jxuBf1kmbIoAs
	oxSIuJl1Gq4yEDjYRh54SXfwzemE1bNAsjxMbuZg5b4Pwwy5NKVZLzyn8EJf9oZEfDD
	zuyYmCogn4GehYEUL60P+jqUK0dPLEvVVN+F0fTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b498167-f10bd8ac-7847-461b-ab38-e8731d90dd9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb16ff70bf5cce61a31be20b65ddd0193d05e9cea86805101ceb7d35d7d358b2
Date: Wed, 22 Jun 2022 12:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655899259
