Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A791383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651955338;
	h=To:Subject:From:Message-Id:Date;
	bh=apjL7G35NmgRmwernN0oDQLvx08GSUMMkHZvqLWBvCg=;
	b=EFOKS0nLLRwBC1NZb6LbzVVVv9ZZc7no2QnEXmgGG7rh5xk1JTtn8HkCXM4uRL4G
	OVhXKTDCm6fizt5o0gFEOYyYr7dLX7+S4A1wl/qZANnmi/eFpk4BP3LsEonHKkB59W8
	Z/BRQUjQr/topSsD72vTgoyPQRK8LYk0/31D0wTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651955338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=apjL7G35NmgRmwernN0oDQLvx08GSUMMkHZvqLWBvCg=;
	b=j6IVZDGPwkjmY2PzyOga56c79TsLU06QphRjiUXvQ/Lm29t83xfDc2ZgRLDy6AlD
	2zVRiZAkq/+r1Q0BG9e1FkRNsL/n7gkEQAeuIgWyciSqKKVJUFyJ50jVIeyVUEenjxI
	gPjUuXbVP8JaSnmusUBUV8Xv7i111xb/F0RwOTZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0360c3a-dfec69ac-c91b-4477-8fe2-9c603b945f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb4c42953348c9cc47bd5fd5df199491951b127adce406577bd5387384b0b1a3
Date: Sat, 7 May 2022 20:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651955338
