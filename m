Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93DD210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654764779;
	h=To:Subject:From:Message-Id:Date;
	bh=tl5/oIjrsF+8kDci3xGuNgBKvzxvpbXim1GaoBBFIgM=;
	b=NFtcyrpP/bBCMw/Z26lT+hQzr/u/O4mojyMWJs7vpXcg2K13A2FLlhr/9y0+vumn
	CBdf+tjDzLBRTnrOZPkCquSsxbL4oHIIWQat6nKdIbw+CFDOk/iTKazOkNl/jGABIZw
	7V4f5PLpX38hMQGurtkN1j8oyr4yfmvVmNBq451U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654764779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tl5/oIjrsF+8kDci3xGuNgBKvzxvpbXim1GaoBBFIgM=;
	b=PxZPxcJ44wglo/TpwNNamMLJkpJsjHt1PoA8HJp+UgqeHE9FHe4mpYO9rTw0BIPu
	En2G054tyZWvN/PHzRmAxLroJ8B+eWa36TNxMXVWjg85bn9A8vZRI05dYPcWM0ClPud
	RkgBBAT5Gi52an3KO+Ksu4gaWLUzD8j+AVmr+eck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147aab6c6-4db0138b-dce0-43a2-8776-66eb42a8d237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12e90b97c3bb9a345baeb7fde7511299585eefd93e3130dac08786d4400ebeb0
Date: Thu, 9 Jun 2022 08:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654764779
