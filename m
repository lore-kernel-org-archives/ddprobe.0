Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B7420E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 05:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649309578;
	h=To:Subject:From:Message-Id:Date;
	bh=EYl4USjWwq5ekiCSzt/aDqIn+yFmGNah4HIzsPdaXqU=;
	b=OTdR2ra3Z24LinqYpRXbJhHMvmnWltUaPMCckujwhY7W/OTVvOyBeE4Wy1j0ltGE
	9qm8HjgfrbgSeCz98P/7ykdpf3/oTjKWcXdjvOT8gPR9vNGb5KQ6ToxdAyR24Tert6u
	a1QiTk+8qbjPOCyS9t8vuIFUaiym09AAG+KtXneA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649309578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYl4USjWwq5ekiCSzt/aDqIn+yFmGNah4HIzsPdaXqU=;
	b=CcLJ02cj4T6n/xAlgZEwYlfMVx9cIPS39sgQL1Db1MbZeqJVhuDs6rX48t1Zc6UV
	zCcgvOIsVANXWvrFIT/4wBEh5h4nrwI2xEFbLa1bZXpjmP1yKgNV7m6HsncuVhmHrUx
	FJIIuxGqgOUUzCr0elv+sBdCHOoViT6FkDnqCb5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800282f431-2216e62a-22d9-4ec5-843b-7fe4b9105175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdf2aa52261d459b812d56d51e88225599960dac566469e81c07a2618c595539
Date: Thu, 7 Apr 2022 05:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649309578
