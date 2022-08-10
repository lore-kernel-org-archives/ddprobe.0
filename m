Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFC717D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660131652;
	h=To:Subject:From:Message-Id:Date;
	bh=U8Zx1196eIGXEEb0vcuipkNfjxNf5l6Zf2rCykQe8rk=;
	b=AEZ8XYv88etWnZoAEmp55sYhSoct7WJIQpoTj7p+B90ZVSEKT0lakV6aO94+TOuL
	MsU1DIQ1EkX6dXmxafbgF+cX7secfYk58qc1hb7GAH9U+3xWcHGRL6AhpVXufrT7y5r
	xdK+aIZBhBgIdbotrexOixnQj9z2i5WCJwMeDU7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660131652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U8Zx1196eIGXEEb0vcuipkNfjxNf5l6Zf2rCykQe8rk=;
	b=XQ6zUGQZFFBdKpWC8KtvHXMIAaWKzWxFM8Pfc/MCHukFIxvrabosSVlhN0G0Z1Qp
	KEwlcG15TyDjFpPEtIJ+b6K8MEVRibRDgLbRHj1y13BU7Xk3mSNWoh5kE0KyZRB0FtK
	qxhK+RyTPLGZyPLPu3wv0bJIOQDkW6RJ/m5cMS8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182878eb3f1-8c1fff1b-46ce-4615-b543-e3c97a01f915-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d549fdaf6e131e8ef047ba605a2cb52369504101de80dad303086637f4a5c8ea
Date: Wed, 10 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660131652
