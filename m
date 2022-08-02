Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635757F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659459052;
	h=To:Subject:From:Message-Id:Date;
	bh=l83gG5/2cdPk1GWH8DD1o+B4X+fejBHpZc/lP/zluPo=;
	b=iOCGVbb/q3T0+jZWlnjgUZqW1EIoY8Y+v4ODASedTvZKSWk55VKwTprFD1uY2PyN
	wxEo2YHxTmm0FO8OXXwCjgCUpxNhXd9HBNQo5R9mG8LKzL7TbrWYFNc0NYMcq86lAIo
	vC3PSqKln9E5h8iRl5myax30dXSjpY6WEIzTWScs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659459052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l83gG5/2cdPk1GWH8DD1o+B4X+fejBHpZc/lP/zluPo=;
	b=ZLFNs+moEHO20lTBGMB0SMj5u/upABMPL+1iAB9XF1imwC++lxke8zzfzzCihAl8
	wTKioYU7Gx0BXnEbRxakuv1eyGEo8N7tvE58S4XgqDqfg5rtynr13aBqKJSOtMHXJCt
	3vqrZAkZ0tSAeAp78gnG/nZ1GW3CcDwN5Vgag4ks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f77a434-6c444d69-d5ae-4a6e-b70f-e6e0f6679702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713387eb9e9bc84639b9f7762facd563e59e9602c71b77717123677bad495d97
Date: Tue, 2 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659459052
