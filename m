Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C883136B
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652722439;
	h=To:Subject:From:Message-Id:Date;
	bh=tDu/XnnrxESJRJgWXWhFnNm2tUUJZ0cwtd0eM3lKIts=;
	b=eGS4+LstSoZYUaLPcB+xvMX48fi49tnGftcqvn+DeMBHmMxr/9oto0SiAXtEHC9L
	gd2nYTA8pVWnFps3f577pQouQoK5iScDFh+n6qY+IOFEHv1LxaucSw+hmbVV8W4yD9t
	vpijzLef/RaYoABHJhbNx6I3CTGUiFjk5qgBzlmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652722439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDu/XnnrxESJRJgWXWhFnNm2tUUJZ0cwtd0eM3lKIts=;
	b=DpCmM0WJH443F+dFxNQ/e/76R1IKuMGNe8NgfswP5eSb9toIVuTelgO+kmXhqclH
	IWqI6iOSQlwNHZpr+TmwI4mMIxENpG+HpBkKZ/4QJlVCo+8KgWm2g7GjkwjYA7KSpcq
	qfflp7W6nlOmXTuZsbJHvhcq0Mfej/nQwdXlTzvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cdef1500-e58ad49c-a69c-45db-9d3b-f0970f339ca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 195e3b64f461d3ea1e9009366029e93e4b959cdac0285c7943827a579705c875
Date: Mon, 16 May 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652722439
