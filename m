Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE96AB3
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658438812;
	h=To:Subject:From:Message-Id:Date;
	bh=2o2D7AYUZC74HOkbTqP/BuYqHi7RIRY2NNZrbRtesFk=;
	b=DZV2PtitYIwSCIegSOXIF/DLq11aVXEUZcLQqVAVpkG3h7cqtqgYSnon/dRDhkBE
	MVUYSy3Bt0VJOeFE+tO/0ftcxdfG42Z5X9oeAOAjBJdZt+wSjlkeLrVSgXfjq7oNHbA
	/RG2PGBqQnfDGd7jQ+pgP83MHuqxxsyfKTUdxNhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658438812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2o2D7AYUZC74HOkbTqP/BuYqHi7RIRY2NNZrbRtesFk=;
	b=dwpTl6gDGTFvFPHygpD3u9ner3zBc+sjDIteSQXvcItlGDzfiRNmsi77EDNr+PlL
	BufSZtv0dvLHrAp/vbv6KCwJ3SVa30Q0y/YZOv/BVcJwI23fyF/1cy2vDyhfWQ3tmv/
	DNxTeo+bPTYxtH3QoAhNrFBhOt/5Wmz924iqid4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222a80274-aec76747-5a8f-4802-8df2-f283838d8ae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d0ec63e0b5d347878b2646ede2f0cb4b1ac457119c790e899af5edb34a34162
Date: Thu, 21 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658438812
