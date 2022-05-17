Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A8A1854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652806799;
	h=To:Subject:From:Message-Id:Date;
	bh=j+lL84WTN9BddcIiLPzhJ3WIZopGW1qTbUm3upVmVUM=;
	b=IDpm0V6SclJRh9ozcwsDEXNQjgL1/LInGXGaMNHTfZHKH9tu3J3Yo7Ua7GkQ1vpr
	bKsYBYdTNAhocgqol+pnz2rLQO2lj2YDpfzc3/tzqHoCVBnzeYh59EN7hNUnkJYpV0l
	pw1cEeagCY2Y4pgXRy7vlQPzz1vqrGlWniTOPae4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652806799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j+lL84WTN9BddcIiLPzhJ3WIZopGW1qTbUm3upVmVUM=;
	b=kEZlOW52gJWny0OMiP718vOvjZQQobjmaaf4V6SBjKIFPEt6Ylwrzoi5knxtrvmU
	GRdQxgYIBZhmBx62Y3Z4ETcc+f4e50r/Vdgq/ZgjXDJRaV301XFWviWo2FpcmKg7Vp4
	YPs4fvH6l2wuY7ht4PI5YbzuHEmFaZwjIXQjCHa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2f64f98-337e385a-bf9a-409f-a502-46433a4faf90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c8ee6f55d7a6378b063342243daa15835dc66ab8e0801dcb1c880f54eba6424
Date: Tue, 17 May 2022 16:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652806799
