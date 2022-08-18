Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2264434
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660838452;
	h=To:Subject:From:Message-Id:Date;
	bh=jYuNA8nf/1j3nePD7YUSjkkWuHCyuIcmi+D2RUhd6dU=;
	b=EL3ucn3CeihY0tpCQtIusTrvBHx4CVpZcWTwzXCkjkSKwOO+s529YmP1zStzvC30
	Xh1mxIi+ZXzFhBVAQEP2657bBVYp0ARkx5WzXUuSXS3mMqkhi9I04mujs6NLKyAJlxq
	rRqSZRJC3L5J5ajyhX45+VCcWzJdmHn8wAH1s9hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660838452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jYuNA8nf/1j3nePD7YUSjkkWuHCyuIcmi+D2RUhd6dU=;
	b=PDUCO5Vw7AU7H5tqygWq1daVFVTlD+PpBrCsTuI9Nr78fYvTDSNwReOZFX5wVjnt
	zxb27ApnoOkn6beZEjc+2PXDIUEory/sp0iCYsG0mnXsK/qorDGV15lGnPYRMnQ6eOP
	ATVjBtyDgTIpCNjzii4Vsy5ZUQux7Iwj63HKNCIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1af9d6e-fa2d999e-3dff-4009-bb8d-7e2cdbd024be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff8e04291d5ffda9df25a3b369e60bbbbe79184ff31346fbccf7b8fa09e3d9d1
Date: Thu, 18 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660838452
