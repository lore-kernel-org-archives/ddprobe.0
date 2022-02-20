Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E305EBF
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645383985;
	h=To:Subject:From:Message-Id:Date;
	bh=vMcsXxDCp8WbKHGzkskqeVo5iuqt2YKNp+XxewUTgzE=;
	b=fPCucdg5q93Yers/CbeBC26TIyvlpIo2NO23wHLkgbD6PSgvgplD3/A5wPthx4WO
	ud7+wNL16eido4B3cDxNNIadCfP8mbXcuj0+ajcRvVDI0vlwk0HZT2JSuLVt3vjxa4f
	FgiMOcr2ta5GPyS5ygBGusJylGjfC6ZPutKI39kc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645383985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vMcsXxDCp8WbKHGzkskqeVo5iuqt2YKNp+XxewUTgzE=;
	b=TPP27m1xrUYjHehla6bla9qKViGmxHWi/Kl3gHZQv9gdNIzLXJgi+wc6PYFoHXYl
	OD/OJ1K/PwsLTKjgcZY6WZ+/0lyx+uNx8y+nDDmwcAfg8/0TbWuis6yQAWnUbhYmfK1
	IBLyTyN4j9CgTh2/HZ2VxaIZ/37JCMNW9W0ZRT/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1887269d-cdded4be-fdfb-42aa-bdbb-06364c7d8136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b5b7232a7f90a85bda420e82db6f4113db99608fcef7fbc2b80199f40fb647a
Date: Sun, 20 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645383984
