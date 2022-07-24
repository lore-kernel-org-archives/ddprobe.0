Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B5A179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658681212;
	h=To:Subject:From:Message-Id:Date;
	bh=kq5j9K+izvAvIRIKIGYuEKi3TGdL3QI2ti8bwzygdiY=;
	b=gxzqRN9/rI4IuY/fc1glvFKUNz0V9VAuXeyuB7iJKEc2fmTJIY8fLg32AtUq80fG
	UX5IEsGkkMPoflZrAMprOiBKSW/s6GFOWdafjrfzdS6uS9ncK5MjZJUvtEGTj4mUyaH
	YnQVyKeJZqQppiPFV0DdTc0F6B/Pui4uuFmycHno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658681212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kq5j9K+izvAvIRIKIGYuEKi3TGdL3QI2ti8bwzygdiY=;
	b=W61egg8dl4c7TsIetcQWLPEtKh9+MgN3uKuaf0ViW/g9S/fnE3vpSccAZ+m5D/Tk
	GEycvUDAqdK6Z0/i5XGKNa1NY+CvKgEc1rLmCjbLE/wp2bx4+0yG1QGbi93hkUMyBwO
	sSpVQH3TRJhUsrKKKxQL03uDUUsiNmDfqPPaR80k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182311abd8c-a4e1630c-68f9-4903-b631-9683a436ab4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5da06a2ec84a47e90d263558fd722a6734f88e2af5bc31fb7697ad252619e701
Date: Sun, 24 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658681212
