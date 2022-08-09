Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6110823D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660034452;
	h=To:Subject:From:Message-Id:Date;
	bh=vy8I+7A52bSli8q/bvfF8MM9L6wK0gqOIpcqVyxFKGU=;
	b=aKL61BB5cEX+UPlejrgPIT73k/ISxf315MOGEQNUZ6LyscHUjRpTgg3TXN6eJ093
	JDVF8zNilMGqwBq1QJe36lAQjBlIoAobXPgSGWA8CFkF0ObvnxAWyvDg1tFZgo3qL8+
	KyRwT4AZ5j3HaOFAHnf3auHitDZ0jfqHVtXHUTE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660034452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vy8I+7A52bSli8q/bvfF8MM9L6wK0gqOIpcqVyxFKGU=;
	b=Hx5+nQbsJxwcxDqobmMkH1kb4EGYKpsjo5r43urBk03B/gtZ7H75CoVOeXCXepdV
	FNww7ZnCFECKPMNscgvQoBhuId1ygE2T6NyGD8HuFc/kPsxSktR2tRiuAxeuBMYhPlK
	Lq8/H7kmHwlc0X24roSLdZxVqar45XMqQO54Kjo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281c38c43-548df2a7-b634-41b3-8145-15ad606ee989-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f4d12a18cc0671044ca4a40d50d3184293fd2ca787e87acebf0dfc80c5e364b
Date: Tue, 9 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660034452
