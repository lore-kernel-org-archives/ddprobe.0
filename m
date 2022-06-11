Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D6D64F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 03:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654917839;
	h=To:Subject:From:Message-Id:Date;
	bh=chj6b2MUIeL8GPbC85wGiNnKOWflr53RzanuNyDW59A=;
	b=D5C+pODVWXvLrW+QJ21S/+dZ58ieJqGFjPT1EK3y4x9GyjM4q7hmyUErA6SBbZxd
	s/pLxNkoKO2gF6k2WVTainrejbseP8+whYrXalFA3s/hKdq1FrTCgoa4EkCsiDQZw+l
	snhdHQV1mOFIkg43XoFQ+V5UA62oDwo2R8LTLtUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654917839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=chj6b2MUIeL8GPbC85wGiNnKOWflr53RzanuNyDW59A=;
	b=RRKr+FPLFDmBMVKq7Jga+ZBFzACv7ZFytLaJbyFyWpoEyuN51pFSioOsOfFVJEYx
	FpA5Q1pp+yQxKvhKmx3nWr48jtxacdskARAuydNOTdz/F5rJxwcyfV91hgLj3NSMqTa
	sU6hVSEH81BkNL4sPVnRxH98eWXoPO/XiyIyUpKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150ca399c-c1c44062-eefd-4408-a232-b90be51816ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fca721ba6a31745db84713184559dc2dbd0e0bda374f4e940b5a6daa376beed
Date: Sat, 11 Jun 2022 03:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654917839
