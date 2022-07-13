Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F315A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657688812;
	h=To:Subject:From:Message-Id:Date;
	bh=Kkr+evPN13srgY4A24ibrTca6yo2KKgrnhWcflntaJ0=;
	b=bObtIwzGS+PhLgvMdia39PevVDlfhJstGD+jcH84nX+PC1KCb5lbSyXQpZqgwg61
	bbFPsVoasT4Fhf5ZrpSUSavmtXFOYLRjmdJHIcS1wJdAqjt8d6cA9fLSqApsLNQGvuv
	ZOKqyoWOzMRhayP+yDVD13JeJlxpaVuy+i7BzPtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657688812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kkr+evPN13srgY4A24ibrTca6yo2KKgrnhWcflntaJ0=;
	b=JPeGjP/tVq7lEo9lYOkE286dM6p/2xWdmyIOynOAZxt82csS2sIvHlomESRxFODW
	FlR0dWgod3rJeOoddsVHnjXU5FiBZS3mfRXaiO07zwAFRu6AiO47zj6hP2l4P4LoafL
	ij+Fa9kJaJtToX4ZsVVGUF6aEsotZaxwKO46dmMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5f3eb26-1c97f89b-ddbc-41ee-ad63-5533ae119e10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 873fb747860a3dab17ec55ba3ee184468247056872692ec138149b15692d7a9c
Date: Wed, 13 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657688812
