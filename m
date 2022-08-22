Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751CD2580
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661186452;
	h=To:Subject:From:Message-Id:Date;
	bh=XyM3Usk7fhX9clcMIpFPl7jzndL/KeoQz+cayDx1vz0=;
	b=QmHhgdE3UJft5bLbOn7itcaJtj48buyua4SPHm3S6XrYcQ7wYxjGw24ySuxFB9qc
	ZYcWkXWmw9vmI56WB+BFZK8YYZqV66C/TCZewRVdXHJj2s1fMIPgBJM3XoLnOZ6irZK
	6ffZntRNOI18YOkXt6JgFuJRNXdthinJtua12BQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661186452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XyM3Usk7fhX9clcMIpFPl7jzndL/KeoQz+cayDx1vz0=;
	b=gkpgwxF0U9Ruf7P95DBnVXER6dCzExUAVLxd9xfIxSkEK5ZRAmLZ6XgxCav6q+J4
	lMESn8FUhnSW7I8cbiArsvGYReC4kC8iWBrdmkE27SvvVhtIEZuomXmGnB1WoH/OkJ2
	vs4yhofGPXRTAvglyUfR3sr/FUkml2L00xo7bJVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c66dac66-143f4b61-f169-44a8-9954-43edb30862e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69291502c8060f71ce495bdd133dbcbff45c13c9449297511a886a61e398e75d
Date: Mon, 22 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661186452
