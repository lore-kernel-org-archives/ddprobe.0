Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721BF7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646090484;
	h=To:Subject:From:Message-Id:Date;
	bh=pafa6g/BNC2FMTGMtDKJ0d8MLRs1kzrwtNjtzoSWpos=;
	b=ms9fflvnCzF6rQuTmnHf8/GEvGZfYiaeBFy/P0M4TNBgpgFvK5wDTGqxFgMvfJSU
	A1vpHbVafrnoYlqD/SGgLnQg8EeFY4x7K0O46Yap8l22ZZZw3aHm/lHaAlnVfaTUzCe
	OTt0PZVBNxtmWELwLlhbBIyncZ3Pb0/xTfGa7I48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646090484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pafa6g/BNC2FMTGMtDKJ0d8MLRs1kzrwtNjtzoSWpos=;
	b=EL9DnWUIk7zJQOGaEmNVdouz24UvTU0tl6h1KQrz33scW39ztYIB+ZWah+/M4plz
	yc8R43893vlTO90B6GKnRXwvrhvH2HzlzuGbSxYTAYgytntdsYyilgHnbhKza6jJn60
	8Qx6c3yOykKjsQ51+Oc8NNGWpWye8fq+7+TVmv9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42a37c4e-6b42e490-4e64-4de5-b1f0-84bd7e70b3e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d247939035fc1f0535ec75c8d220a8290afba8c82f396762657fd633861368fa
Date: Mon, 28 Feb 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646090484
