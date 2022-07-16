Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9E1638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657968412;
	h=To:Subject:From:Message-Id:Date;
	bh=GRsBkfQV6LQ17NndI2zfArhIcpL8FLSENidiR2wzWUI=;
	b=C6ytgnVKxxJFqU9SFx+O3xvGuwwmU4hBv1g65od2kUwQi1fTqLSiQS1NuK/d1gJK
	AvWiHn+Ilu+W/o+cFRJWB8/vm9bjQVIhB2HRct4A3n8BufbA819opd0G3uq2okk36jt
	Pu695tD9HiMVqbqxj1Fy+l2zpflRjaZNZgiG9vlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657968412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRsBkfQV6LQ17NndI2zfArhIcpL8FLSENidiR2wzWUI=;
	b=Qh0/61IiP5KiP77I7NF4WWKyIWfF1PWPrXU+DBk+U+2MvRddv481ko4GRPfy9vQP
	RAc2OZVOAmes+xmRC0BUTMQpbwoaywfdphbGFNfY3wzJfTWowGP+xm/eljuMzuMiddD
	0mA5bzOQjdRENvWEY9QB2VjSSrLXxyT3+EXuV0GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182069e4708-308a4578-bd7d-4bb7-b9e8-78013b7ccb01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e069c6db9fef832bf6deb00b330ec0dd695ff4ef12e116313db5007c3aa5d14c
Date: Sat, 16 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657968412
