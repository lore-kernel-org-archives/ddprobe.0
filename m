Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493EA23A1
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 20:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651350478;
	h=To:Subject:From:Message-Id:Date;
	bh=i1fbljlYEcxUiWH2s/kX6+AxXLi5BWnlbL0sD1mvvOs=;
	b=d9ompix7qcCHMTuW0uoyNA8JHCLRSW6Wu4NoqnbrzEVsrsCM3pJWH1BHxw+09hSV
	V/zJnB+rX8CyONrMSfgK9rqaa6ebLS8/uBruiw7W9iand1aM53LbLTqh+g0qPOM+Mu0
	2M68Jacxs1iM5Vu9PurnBBUqIdTrKYBJ877AAU2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651350478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i1fbljlYEcxUiWH2s/kX6+AxXLi5BWnlbL0sD1mvvOs=;
	b=ADlrLEXypIcixgfe7C+VlrLN0SYSXClqAJhWIScjVxlGRkS0lud/fFyyqoQ9OGkx
	fd5ekHaNKWOjdmM+u9ba9R+gG1k5pxQ+/iGu4p9s70nUv8cL/kPW03Pgx9eLb83kn1P
	DxwHD39KEAvNWlLy/bWXRjGT3DGc8GPZOXrU+K9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c289dbc-dcd1cf4b-613e-4d3f-b321-5ebefcbef707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2f009dc77eff2f7f4fa83e57c81b628b90b8ec148f8169d42cbe6b87015d765
Date: Sat, 30 Apr 2022 20:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651350478
