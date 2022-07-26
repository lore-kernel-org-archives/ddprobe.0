Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82327621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658803612;
	h=To:Subject:From:Message-Id:Date;
	bh=UYectLZq8lArGrrKFBKHD6VgjjP+cDgvrt4vZumX4BU=;
	b=ZJLMJ9IHvnljBoWHNM6vEzjhDF/Ep4sOhgti2rcqyXcN2r3zXIcBlYSeopnEoMzj
	DHlRYV7lcAVi5W/JpXaUYHYdHzW98Fujnzf41+E3uNJlI19u+pj8P8ECy+od4uLLPKd
	X/V58S5x8DH57HhrHqQSpXx3LjoqbzaxrXpOzkMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658803612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UYectLZq8lArGrrKFBKHD6VgjjP+cDgvrt4vZumX4BU=;
	b=iLKNynERP8VaduB6L5wp53cyCmKKeJ4HYgMFpX6DMKPERdjk+QmJ9MGvS+nlwaFe
	PlbBo7efvziZj68FBTDBM3Sn2eYmoiUoJchRqqn1AdHqSUqgwweXjyCmghgOwNQS7ER
	F/8Zf543+Cz0Wz7h4RwAIqAQrGrWoqakUaX0TAk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238666a50-19fb7467-40b6-44fc-bb53-77253c6a5654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3754b9b52e3c73a2a4f095bd03939623e2e20d6f44d6e057c07fd7162cc106fe
Date: Tue, 26 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658803612
