Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFC7179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658684212;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZnOAnB2FiKL9QTlEgXUw3YjaYpx95h/D4zR2QhL0Fo=;
	b=R7LQoTRk0Z4cV77UOtyigGH1O8nq81AMsEVqJWH0yXBwskccQ4Pb2Tf94Q1p2nMX
	enSrpfaSSpvPBuKXDL8onyFD3UYJ6r1P8ddKSM/BckGzJf+BoG2JJrJkytvc7f8lFM/
	h5Mav8fLtqnlzrdMsbxO5KvdebKMOVnVduf1hoFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658684212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZnOAnB2FiKL9QTlEgXUw3YjaYpx95h/D4zR2QhL0Fo=;
	b=RsAzVRhIeLn5QmVgDkTp/gB2VN/MzDdYKdGQFsUcUKvefPTCazpmx/0ixaqrBG+0
	/ZgyiM6CVYLTbeFOwsFEneXHDP3xWOjY/rP3oDInCoIXrGfBDOdo1kKnluhTHShdBdN
	9jCixnE/NXoIkvgscyTbWOdFiq2iTqpjwpcR9V3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823148845f-751b5945-1d07-465b-b4ec-c1d71d4e9f6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be577d63b3d780b3831f30d464adaeba3aa04fc8e1585739a6af1ff284944b4a
Date: Sun, 24 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658684212
