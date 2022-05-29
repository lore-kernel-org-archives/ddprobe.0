Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD7315A4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 09:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653815279;
	h=To:Subject:From:Message-Id:Date;
	bh=LnqK8hccU+oJa8N2fhF/lQ5THrZ5kdRO7RodvxcYYdI=;
	b=K+5dT8SLSI5dLNP3w61k4RxW2WuTguAhvkBOaHQuLC5dL/DPOlGngAxQ/O6MaNQD
	D7M7HoOh0jN6covQbwuLYxpFCyxtOzDIufrkZLToAwhcUPu+qgX1oWRHCewJu72d3mZ
	wxYCODtlVDmWVWaNZ2xrMhwA86cOc+sWbleyJ4Fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653815279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LnqK8hccU+oJa8N2fhF/lQ5THrZ5kdRO7RodvxcYYdI=;
	b=jR9Y4ZAM1wvt8X6sOj70Su43uKbCbH6lBavlD+1KxyVJbzIdWcB7110/AM7hOFEw
	sqOM9MzWuN8qK3TjoLYmNOyho+cAfoAG2ve4vTiaa2SPRZoxvh1FhzO0eL02Z0/rmx1
	KyiM6cnTijZwhCvY/bpgWSMWJqZMUpU56HAksRrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f127e9f-f485e9a3-cbf3-46e2-ae71-38d9df870b04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab5061f91f6447e0ab09b16874fd43073f232993fc9f8fc9f86fb5ecf15a7422
Date: Sun, 29 May 2022 09:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653815279
