Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E1621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 01:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651022818;
	h=To:Subject:From:Message-Id:Date;
	bh=G3Z9L9q0d+QFumMaJf4+3NZJInli4cY1Z50tK9zr7F0=;
	b=hipUPuwY9veofhiw6ur55iElklYJbFcgimwAzh5RmHo7B3DG9k/cgSBVs7pRLVzZ
	PLR5iY6jqi8RCJq8Wm/SDv9C1kF+/SeOXa7tCgmSSv+uQThlwBaE78Q0AawqIi5/Snx
	lKuxbzkCnJzgIn8YY56846DqWDrTeeKo35b1idUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651022818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G3Z9L9q0d+QFumMaJf4+3NZJInli4cY1Z50tK9zr7F0=;
	b=Vxd4pSFiDdi9Pm92VMl7hKGp48IYG4wPAOV35xOXgO5SmZtDSclqdyGY0K4pyY0r
	30v5cGauSzaV8bJICLJt9Ij5d6lTR9zubnhVq6EyCcbNJdaRhpt2K3x/UshrdjLe4fu
	2zLy2wtIgeHbOUQRI8N0Yie4EZ5tqKWBaEEwfc+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068a0ec56-04a9dcc2-2b6a-48fb-b75a-de147c1498cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 054d0116adaf4f7aabd0791672eb5da9999e939e96d5aed0fd815e80cbb8b0c1
Date: Wed, 27 Apr 2022 01:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651022818
