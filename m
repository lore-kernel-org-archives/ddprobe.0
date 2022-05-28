Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F05D23B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653724199;
	h=To:Subject:From:Message-Id:Date;
	bh=5xHO2ynOnhdtIzgkMsanYsdDM4tJItYf3gNFLtkhncs=;
	b=ivMc5cLDvJtfXRJQrIiMdMtz5bNt/fin2r0R/9eIjeN8HyugjKxkWR9gcx/CebDY
	D4jWhCr2XxpbWtLEFfgrSrSVQlV3XOjnp1pOgrm991jFM/JTDh5t5cXBeQmvjW81e+5
	Erxs73MWlZkG3RuZTdZMI9wC5ycgqLgBWRNym064=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653724199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5xHO2ynOnhdtIzgkMsanYsdDM4tJItYf3gNFLtkhncs=;
	b=V1t4CSXmpSg/QV4jj3qMyyNW7YCFcPehsW9DThLNBrV5T/hWcIoXItj4fDYt+vSM
	G4r0TszHd8mohzS43jLm5V7HBeqqbTDF4R54woTeQHkAnv+0fCdzXbbNzFoskx216kk
	ISfFm9ZTshQ/LBAO99DP3uVv8PNoxa3gcEVE5ZhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109a4b9c7-711251f7-5790-4afb-a587-f4283421cfc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5572fca60a3a5752cd7fcec19ca05d19120e38db6e7726e6b320f0d8ea558cbe
Date: Sat, 28 May 2022 07:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653724199
