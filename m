Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6030223C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656891412;
	h=To:Subject:From:Message-Id:Date;
	bh=roVeVR6s8yz0sI9YK2O7ohgqtKeBCzKm7a6D15SMezU=;
	b=Wp1q/Cs6gomSVzvxNwg1HhXHJ9ZJih8+xgZUwGwJyLgbm2QtXZKwABFu7vKsurBW
	rfSHEyXLgTNouIJYJE434+ZOwA/QdHHoy92YripC9khfoHDQ6qePkg4hXKpiPkm0sWx
	qi6M6vTJtyP21mZ0+3rzDb2BETxoa7wUp/pYEzJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656891412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=roVeVR6s8yz0sI9YK2O7ohgqtKeBCzKm7a6D15SMezU=;
	b=TdjtdC/y4TQHGRSc1Jv9ZLsq5Z3v/rQ+OhZn3QGRtb8lagwNrXF1/CYP8ySXcZSl
	Y84rAIMooAsfMz6XwYzoW4kGgzvdP4RYPUj2Y6LHNaoNUidnVkRlzNXfJgWAkaKAWq0
	WBOG5azqay3Dzz1bxFHrKAIry78nCzXQX1VGYEJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c66c8f3f-162314b0-33e8-4e9f-844e-af7a2983577c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aede20eed8514d6b2816ac952cbe9016324b4e5e02bde894d1f4babe8963720
Date: Sun, 3 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656891412
