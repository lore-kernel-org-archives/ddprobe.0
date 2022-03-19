Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785AB539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647680484;
	h=To:Subject:From:Message-Id:Date;
	bh=58qooyV73e3kMM0zc3LXGYSA966Ks4LPHWIy4YqGmmI=;
	b=f/FpFZE5oxnDwunrrz34hGsjXOCzzdRE3mQYJJxv/Jm/YmeFxBYUBgjoIjjetBGB
	z62u26UfjUvYP08tA0VAZVhVVCPp+G3XAcgLjjvaf2wB3Mxg6xc0NgmTJSDtrhxx5w2
	95o7ltZohOStLDusNz/YmCUDqw3fARRHf8KynYnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647680484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=58qooyV73e3kMM0zc3LXGYSA966Ks4LPHWIy4YqGmmI=;
	b=RhtMKfGE8J/lz4z0l2s+3jAg9opPW16zugbuo0A5CiuP5ro8OJ4kIesvHma0Y2Uf
	CR4P6BKUQYjVthFZHIGzpsqLJMD7iBM8OXi1v2HT+StxPDTJefukLRQz/kBTtXXusoI
	JNOyLrMrBa6s9/82sDLRuTO/EGYwlaKX//E6TYRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa168f5c2-ace2585d-0c77-48ba-88e3-fbf773d91ee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcd076956d1e0e11bce55a12b549e9ad234e8f3aac79034e45b66b6ffb113ebe
Date: Sat, 19 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647680484
