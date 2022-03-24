Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5104D7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648120318;
	h=To:Subject:From:Message-Id:Date;
	bh=wzNcvnkW14C8hPllm8I5CzUMIAmwDhAxFjuA/+1wqMw=;
	b=SWU5j4dUoDyZ7lltrA2NCU0c5cpzjJIJwZYuz4Osr7AYo8yvDiuifCuGmzTld1jn
	sVAqNWSdElf4/k4lsduQcXcFDslGIDFthe2F2fHZOR+JQJbN7i0FmRKoaL7mpTDt9HE
	vEMfiYRkx39t1+nDpIGJKW8xB/2Ux45Trds8isI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648120318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wzNcvnkW14C8hPllm8I5CzUMIAmwDhAxFjuA/+1wqMw=;
	b=awcaSNNUFreFroWxCUlfUQmKJ1ml2D848L6l6YqCaPuhPslgSYEQG1PIdwEjygvf
	jngTaET66PWWmzFIBcHpB/lJXx8QLW/4Si081eyvmBLl38ZfwEjfuKE+r4YT2nTdlNB
	YjdKPUgY8PVTEb4gF2uUKhd6ZVKIDo5AtLEBC2jM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbba04922-aaa3ab22-9d28-4dc4-ab75-fe8212377838-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a486da57a82f657cb9d486a0b1347739a12494f716c2b1f77caa043e7887b266
Date: Thu, 24 Mar 2022 11:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648120318
