Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3682110EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 01:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653529439;
	h=To:Subject:From:Message-Id:Date;
	bh=6S32L4tf9lZIeNybOCnbxp9Fobzpru+gnsqxzljVN2k=;
	b=KNz2hN3Fc1pGVONugiOPuGNMUYWhCJagVFDJ2sHri6Z0DrXzH/tY7MK+3faj0xto
	NtnF2RmcLOPwrr4vb0McjeDWWa1kWm5llA6CYH78Vvx2LwF6yRy9YoPg8hlJD9cAEyj
	fg4ahyzg/WnkKk/JvooeNxfIiNQhPzVzJ9mpYYLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653529439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6S32L4tf9lZIeNybOCnbxp9Fobzpru+gnsqxzljVN2k=;
	b=X3A1lDtuRv1IdTF7Ur74ivysrkuT7cY/KKTLxGjofe3UgaYqGhcWRASDe7u/ELRR
	4brbOmZKR+61PMx7meRxZUVd3f7rDg0Y10tPLzFlw+hMB6urQd+W3D39gUuM+clkLlx
	kc9UeBzoZDaukJ3J5h7sALMnMaC4F/Nrg0M4IeJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe08eca8-06054ddc-7e73-413b-a5ec-902858aa8ee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f52a0b347eee042d9ab5f6ee320e6b9bafbf14f6941867d2746edaf0a6507f5
Date: Thu, 26 May 2022 01:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653529439
