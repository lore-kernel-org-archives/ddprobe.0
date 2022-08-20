Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3461533EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661034052;
	h=To:Subject:From:Message-Id:Date;
	bh=xa8TEe4JJnej3sEELbrPqUjBnWWsMFcsuP8INEZNA8k=;
	b=VJzlFrVViZOMJqYX5jh/s+rArcSCZ/ovuNjyXmZ6bOqmuqIXjrfgGjQTdnAtVWYh
	oIW3PbtitQQ8NVOyMIA67zofiApDoV/0G9YisX2tFX1LD2zDiWhl4xt4GaneIuJJxem
	ewIPH+A+AbUjNcMLdcHoCixHpuxeT2Sx74xxJe2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661034052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xa8TEe4JJnej3sEELbrPqUjBnWWsMFcsuP8INEZNA8k=;
	b=ciKyMj++OrElWUgOhUUHkc1VK2m9TP4Z/v8KbFcE/EG37BEuvmIzc0ZD6T2ciHKt
	cjjxc37UH+l/Y9vc4eV0juVLs4C5le3/Mx++gDN6/sEtMtFm51UB7EVMj9+mz8npLMV
	SUy3+O/Ssefbzn21LKFYVRxtb84AG946sCoC6FRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd583bc8-9b152da9-ecf4-4a6e-b09a-14f58164ee43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c95a89acca84c34db3b345f2d4fc2119a102a4a6af74092c8925499e1fe0ed38
Date: Sat, 20 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661034052
