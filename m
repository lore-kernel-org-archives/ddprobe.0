Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B0F1FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653683159;
	h=To:Subject:From:Message-Id:Date;
	bh=lFKT9IrqQsB1zl/lzh/7or5tCD6Ax1L3zsFxby42Lvk=;
	b=JyJ+varuF5C9fGjJm4TMkJYfKBFcbEvSCbfnNvZGm6jEGMpdvgOjB9iUlp60fMMA
	1v5VOW+bzAijrQPMfecCqTOJZGhYZnFnEua9bLyGxaoEXeXSSJXCFOXq00LIRKrKhOZ
	9l70KkYq+yBsWbUYDt1XyJH4gOv2nBfQAr5Hwyd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653683159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lFKT9IrqQsB1zl/lzh/7or5tCD6Ax1L3zsFxby42Lvk=;
	b=HnmgPtLXsPqlwX3I68Qq9Kv/7X/1348qIuVV79bnpSBQLkKm+pE4tAukD99TqzaZ
	lMaYpm/sBLQUMqS0uj4G0yBL13Y1xhs1taCmXQ1U517SyNnACOIMm5/wCIxM9tNXupp
	70sDDSSvDhRhd0VrRvBQxvtLXwH1mL5AGh/n04oM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181073280ef-f821872f-7089-46ce-bde3-8755ec488d3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb1945e3b42040f2dfcd2428418ee7dfe051cee9c65816c4ead419ae4ab352bd
Date: Fri, 27 May 2022 20:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653683159
