Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF2163B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661074852;
	h=To:Subject:From:Message-Id:Date;
	bh=oAUxR4iJImVAP7xiwP33rw0jpMFoSJ8QewCE5Fy+EH0=;
	b=O0SyS4L/RMKhk3Iy3YqXWATsoTsEmEUJJJipeNnQO74j68uYwoh64G9GaisRU4Wt
	kTMGoioJoBC28B5UmzwAlsotfJpP5TFRILz+7vmsix1q28stP+vnoubucLuZVx2OIBC
	FDAHhsWv+lLMEZAdOAJki/iFUDLiD1rrTv20I7cM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661074852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAUxR4iJImVAP7xiwP33rw0jpMFoSJ8QewCE5Fy+EH0=;
	b=QEEId2AgiuLmERzIleqbzdoUITHAiw8uS03L1Qmu5jJRSfJ95gzqhmImfZnYm4Sk
	pRt9hwvi7yaw8IhGWdqzSMx75jgGsm0ySa6/hALEF4s67Z/l61N7BeBjNVpt91dqHyC
	jXgFpXZFN++y9DzxrX7ULcwzifblLiZi9WjWQXnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfc6cb5b-782df42a-5c33-4621-9a7a-73e9f0d81bed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 619e7095f6c27e11446b566bdefbea46b2943f207411210827d31d4cdad90817
Date: Sun, 21 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661074852
