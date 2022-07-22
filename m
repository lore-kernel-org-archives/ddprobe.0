Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EA623AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658477812;
	h=To:Subject:From:Message-Id:Date;
	bh=IXsPQ3S2JX/NXrki+vkBp4fnECkczCFsiT+pMzN6UA0=;
	b=ZPtvHqWxIKtkodlU1Yv8QeSEWAVZZEp1RuV6qlKSozi1ZhpO3j7HCZVfZefgq3T9
	LII+b1AFGtKokyC6+uyxSv+YMHYDrDNquNyij9ioQqcaNuNrJZTWgH7VSnTkE1pIxAN
	dnrGgQLVLkw7vLy0m7yhis2HsGgE81iSp6YiVpGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658477812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IXsPQ3S2JX/NXrki+vkBp4fnECkczCFsiT+pMzN6UA0=;
	b=EhNDS+L5/BelNqTfhYx9WSzBteusLYk7AfnakXjqOZpHDqmwHhOlk5MzUpQARpCa
	y9XHroiJSW3TyHuVipyatlsQLbTIgn5F/lOQE3Y+3JHqD8FWEyqCJhrQ40qu8+E5a4m
	0RZ2HntMlQ1tib5adaSY7AoamYZaOucOwbCA3/o4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224fb1a58-272afa8b-1857-42d5-96aa-97b0b393728b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d078f41faff3e323835857261afa50df4c95e628cdd5ca7c74f69ee571173d
Date: Fri, 22 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658477812
