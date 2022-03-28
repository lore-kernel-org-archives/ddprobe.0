Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344387C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648499458;
	h=To:Subject:From:Message-Id:Date;
	bh=1SlMpNM/+cQFiAUGqAyvbgB924Z0mzHpoupvLjKT45o=;
	b=jtTBl+Qa7QX076KsRZYbz00fBHqfqYDSSgvvGxYtBJX7p9GpzqQAUgs/MgZKy67g
	DtFEjtwKvrEnn8Ih1ArK3WsHptTvd+nJh7lbll7suUiuXjvp5jlji778PZ6iSEtBmzm
	fjBPK54BkFhq6mO57R4rnxgdNPGdmvCwWe9Hk+78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648499458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SlMpNM/+cQFiAUGqAyvbgB924Z0mzHpoupvLjKT45o=;
	b=AxmpXjZwWXOFSm73MKCNJOcWeaBJ5TQW0vok6DLglDbq1EAQ5vdYOSjpon1E2577
	yuby0jwbjjv/XKCAsvQko8Dv1g4akA+GKWtuZ72b5zGhL714nEGrgLp2sjGoJAmu1Fh
	oJ8A1CqFfqpPk/RWaRmaNwJN5IXDlcAFoQ1NCW8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd23980dc-7074bf22-4d68-48ff-857c-fb32a855ccb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 062d0f2e24cb7944c29b38e7fadd5fa0d6ef0b841a37352b02bc65b13f96f3e4
Date: Mon, 28 Mar 2022 20:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648499458
