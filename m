Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF647A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659064852;
	h=To:Subject:From:Message-Id:Date;
	bh=MM/DsUVr8oGm+kP1hDLtzuZcW4m7QqNLBdkeZ5tvwuA=;
	b=V6lzZc3ToOuleb4DzN+c0OdCTiukrMlZBrmHSIu/0rhVxS+pO1yp1i3Eu9mmXAfj
	8b6/giNg4amvf+RJxQvfdTSVWmXKWOuTvNB9BnqdF6GUbgNmteJXhFnkg2+nWk/wSDN
	3jhB0rYJw3+kDUqwudW1EwNMWOGaYFU0s6z0+FLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659064852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MM/DsUVr8oGm+kP1hDLtzuZcW4m7QqNLBdkeZ5tvwuA=;
	b=RA2bCYZhYICFt0L0j7HK//hAVq3ukc0EoP39GfMkVU2sVXREoX1ONWp6iLSWO8wa
	jqBLsXI7y26ewSL12xC1DX+KWiC+BJAtsEbT97vdKgAVLdH75WPerQ7mq4hMUDCeBeo
	Q/cGILdmfOWlTMb5EoIQK0T9jKJw/ULFUuzhYFpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247f8a036-c2f95d77-a128-41ee-9e70-d8362fbeeda3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e25536e04ba5b9390b64ed1ca8fb080f5aaaeae1690a78573172fe90b4c171ea
Date: Fri, 29 Jul 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659064852
