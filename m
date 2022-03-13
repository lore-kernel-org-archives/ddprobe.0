Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBAB2F21
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647195985;
	h=To:Subject:From:Message-Id:Date;
	bh=Yzb/j/C/uvg2CYbFiXzgJ1Pu/MjL4wlqhTiSrRrD0XQ=;
	b=OjbTpFV0C9rUda7m5ZPLGNMT67rATP0h+05y0wfChoYpJnKDvOH97Js1pwsR342V
	+4sXtSV7hLCHyp01ifidOXnM0DKpTmtc/hqLKNqGYJUziQNiU3QG6UeqvR+2mXYp1bZ
	7D8+i4ZNiHmw25amuOcDlL84tSiUrzjyeqmuZVl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647195985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yzb/j/C/uvg2CYbFiXzgJ1Pu/MjL4wlqhTiSrRrD0XQ=;
	b=eCCROMd0Z/ffMEXBgalid8bD3ZQEYLX+mlybiZDNYopshAk9G7tjaF3depudmxaj
	c/WgovctgSqi9fXg/JQa8D3Rdp1O47CIGWxWNLeRV5VOIlWdUe8ntSpo6xEaJhKkAqz
	MgoiHDabriDDXN4DjIR2iWojRgTv17/LqMfsWudo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8488139e-c98a7366-e022-4072-9570-63265a1e2453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11c9b2e980da1724a607f655a16c89202f3f7bcf85b388d15c3a0fbd616ce643
Date: Sun, 13 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647195984
