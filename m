Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1F81841
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 02:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655949899;
	h=To:Subject:From:Message-Id:Date;
	bh=keFUvLfAfY8N1Wz69TLnh9sYzvrDg0YbzMS9LX5WukY=;
	b=hKolGRWHWaLFrkxTRAePwcWLzq5kzwCgbp5xdANGX6uIEbWHHmX95FqoBYVSmztT
	i2DgpvPuFlor47KKHdwuVmI+B6i7OLnm4XSkE52YXGBXUcsgFFKWrowunTCnwabZGPs
	vsdH+i9IQJh+0VBsYBhpScv9D/xPa4RtDyI5zaqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655949899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keFUvLfAfY8N1Wz69TLnh9sYzvrDg0YbzMS9LX5WukY=;
	b=ColDSg5O35cjETTfoeciQPm/Js/ra5gPIgg61OiZp6YZ1KoLpReEdO9u1sF4ZBRy
	1Mppb+61c2AyWtoXC6qFhqv07ts/6hFG8WKPH0TKhVXMbmAvQa6lQKoUyP+e3lOUmjQ
	K+cya3wI8zdpODyrpLRSJqo/XGM1kOFBZ/3YucRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e4e361b-505cfa20-d1af-426e-bebf-12d9df0600df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c97ae4c95fe7c5bf6a7d572a797bb2f9f2521436eaea7c230801f9b7b68b402e
Date: Thu, 23 Jun 2022 02:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655949899
