Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD5C2118
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651662299;
	h=To:Subject:From:Message-Id:Date;
	bh=ke3/7YZIcLYQ1aZ+ioMBrfEDXYyMIpQpdlX9P5XRTSo=;
	b=GKCNzltmqde2afJTEFzLWz8c2k5+L5LM3USsQIeH2KDbf9592f8roV2UeWnpj+0Z
	3fsWVLKzsvFdPnoP4IymZJuqDDw+UBzoehXvwqJes3IlinlWW+frcI91Z/maNGRAwfN
	U/F0/shJhVdP3riZwPlzzRmrAMvmKQMwrB35Kwqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651662299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ke3/7YZIcLYQ1aZ+ioMBrfEDXYyMIpQpdlX9P5XRTSo=;
	b=GU8uyR/LavImjk6SluKu5UrMF4x/0u0iyDBnk1wA73ijKDhjlCedaD5szAAe6uuh
	D70GdWeReuyhDCgHw5azJea1LOGbP/Nwb7H0cr0vIF1l9cNxWo1UhuvterkrjV8IX2b
	3J+y9gI/9yIKaL+YhorBCcSAN799deXwaWJpDhKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ebe9c96-47b92e78-4e73-4bce-87cb-d1590375f06c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a4e669f2b884292398d9d2c268eb9fc8c132b7708f59ddc651345ac64a46ecc
Date: Wed, 4 May 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651662298
