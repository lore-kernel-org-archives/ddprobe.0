Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18416A31
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651142878;
	h=To:Subject:From:Message-Id:Date;
	bh=oqHK381fdNSkJiqWl29Fz4P8+OxDdXtRorD7cErB5yw=;
	b=c/2i3rcFKxkECe6AnT1SyqT+p6G9pKYOYD4Feztcam9YzRSvGLuKHBqI2e7ra0Jp
	TIQCEyv2X+WFkrJVG+9tjTD31isJEIY000eeS6n2qSl8RO3MS1UW+TF8C3w9B4ieVlr
	EVS6nStFeB+Ap6W5GQsFZiOXJKYb7WQNqavOL3VA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651142878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oqHK381fdNSkJiqWl29Fz4P8+OxDdXtRorD7cErB5yw=;
	b=CFjQgozXJAsz106ozSPAGf7qxaYL/0HYoSavkbyqjJPkEXHM7CFY7SI1599Sq2vO
	7wo9Gp4FRKSikJVTDXwvvQ/SAxBAN0VN+YKxc9vSQ/Llc9R0DFcOEwuEtDZ9aiE+4U2
	KAPPuPFYuXwaPTVF69PqohONrXHoZLWPtqeFD5mI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806fc8e443-cbb4ab4a-b701-4fd0-a1bd-096474231c1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8487b779907ce32e74cfb467092a53a2bba2cb4d5f1a2af630315577bd8947a5
Date: Thu, 28 Apr 2022 10:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651142878
