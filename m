Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73EA7B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650183058;
	h=To:Subject:From:Message-Id:Date;
	bh=XrAJdRwxQoxiTbJQ3dfWVUBvQH9yC9MySVZlbQSpgjU=;
	b=WS3SmAgGAyfKilwsY0cjb/MkrbgGYXIe/ln/CHjK8N/PBTjJMkjvLIp39OKASW6y
	vgpdHuRMco2rS2DckCip7eDryBv5MuMoXhQJW/er5+VceMrSh2PEvuUHA/4xR3l2+sm
	3MxUl4uP/tcKng+oaQY5NIighMVaSE7iVVtN5Fv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650183058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XrAJdRwxQoxiTbJQ3dfWVUBvQH9yC9MySVZlbQSpgjU=;
	b=GvLfWytTWSgLUGVc9SomRewr2AnvxETGh4wi6T33dmJdNHjRl8fge9cWL1q6NiP3
	0XlxDLDjsl2T6gsVdgRDmRpW6b9fC6B61qHi61cvvgOBk0EiZYkmiPZJFDzeNnLaMwL
	xPdOCqqj6X6MLrv10eL5rpm06NQoig2Rb19hL25c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036933367-8a89d01e-c050-4739-9f66-63d2706d3fde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe95130d57f0d397a83728850bdb8ac5147ffd5f3fcd4eb52eabd366f817887f
Date: Sun, 17 Apr 2022 08:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650183058
