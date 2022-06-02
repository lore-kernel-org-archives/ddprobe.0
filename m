Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970447E3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 06:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654150379;
	h=To:Subject:From:Message-Id:Date;
	bh=su4NNQExXMCM3t6LZto3WjxcZXszShoQ4v9Lo+A8+rc=;
	b=DtABvjZC4pR+qRtnwcgaDOK2a4BNYROyszcApVrVNuDnnD9B5+hLbTG1xrrEp1Mq
	H5R8wHcn9vp4jR2m/UUkcHakV9WyxF1Dkq27TB8LEFm45G3q7wYsXTsIj2YmM2lVvJj
	MangzGq1l5q7vIniRRIbX3ClItAFptOB3yghA1Ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654150379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=su4NNQExXMCM3t6LZto3WjxcZXszShoQ4v9Lo+A8+rc=;
	b=BLh4g/OEkdO8/YfocV7xMjruUrGpZpLAWqoBqfAEQHdX+0utjpbenmOXpS0LuxlG
	yjsYHID5SSEq0+jWtFQEG/VBVsgJOZHjfPUqeLuCxHjoC8BWpYoyLbIUOvcqbeZDVvy
	7HEW3jE7j8wAqpDGmc2CvlXOZq/zU6psP9KnOA/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181230bb709-a5afebdc-3ff6-4cbf-96b4-c6e3bb26245d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e34e6dbf2458736790b4623f5520a893300c8132624b5d5ccc64a079d8f19f1b
Date: Thu, 2 Jun 2022 06:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654150379
