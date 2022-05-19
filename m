Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E75833C3
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 23:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653001800;
	h=To:Subject:From:Message-Id:Date;
	bh=uTxADHQCFG/V7DRTOyD5RZQYsgx+LTMzf1aISLk78IM=;
	b=J8xCnFMcYTaqvN+5a/Cmae35D12PAe3dHGcMk8Ac3QktdO8wlEwLMHRHbFKoM7gx
	Tio3MvY7Q3TCifCz5NH7q+OWkjg2AuMJSpKkTjWpe03GyRbkM0qJiakyY5xnkrnQSI5
	oIzHlbXsJQ/WKDp6qxW/WSAK9LLoOP0863lChApg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653001800;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uTxADHQCFG/V7DRTOyD5RZQYsgx+LTMzf1aISLk78IM=;
	b=fBNviDiGrIOseBQmHXLOlYgtbCkiqjeDXGS8lmIC27gHA7TzvzvitBw3wKbgtuZy
	BV1/Fi2ZtxJ49xSjruo79GqQR2a4UCnTW6S6m/zZokHI2eLVBN+4zSRPn8BO6ienCWT
	CldisqrhS16uN1ulH4S6NxrIZf2YjEhni1Rzp6m8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de95c674-058d2635-545d-4f35-8eb7-f7155c36fa92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2799b1b6a7f25856dc66fbee30b8bcfda95bb789a0a23ba8e19a479fb383343
Date: Thu, 19 May 2022 23:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653001799
