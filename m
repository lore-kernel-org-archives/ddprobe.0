Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA31C23CD
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658436412;
	h=To:Subject:From:Message-Id:Date;
	bh=X70dg7wIw5TUQmNOlCUG7ETgjJYnOtHQBe/vGdEhPhI=;
	b=enMM8yJrL6/hoWgPq2fMuKZiKpticxKA8cZwy+mLnA3sGKnZ0O5RHAMOczfUpOVe
	6kPyMbsvAp9/k8T6cD1eX8PLjO4WP0zdzqsSWHVqwwZbFuFGGZOMEiPFSUR/wTaMc9+
	o2Byl68nu32vcBzT8LC09BlycxlP3PQnU6aww+ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658436412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X70dg7wIw5TUQmNOlCUG7ETgjJYnOtHQBe/vGdEhPhI=;
	b=dA8C8/Reslrck6umBmgRJ17nZY8U+2uMPctzeZU5T+7G3qgZlHuMFBPg/a8A/pF8
	ok55TgvQiWv7FjYpL4A58cK0Ubmgfdmf7a76QUlYJb0iY+Oe4BlfysKl5vKgiGcTDS8
	m5rDbiqZAfCLI00rj+WgZNnyvb39G2iPdhQpPLxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222836379-e3691df1-256c-45b6-a567-4c934f5d431c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59c69e92f43aa4c3cfe28cefba2b10afb81346814991556d9bfcf94dded8b7f5
Date: Thu, 21 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658436412
