Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2227A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647281785;
	h=To:Subject:From:Message-Id:Date;
	bh=fa5n2j4tG4bPaEtzTZxDGnEkCoMAmyZQvcqRkId7jGE=;
	b=lMC92DPnVThEWt7LDSyZz3VbACZXbAs8wEa49M8woHkg819eUhRrrMXgGq9a0DTW
	COA/rxIG8lP12ozicYRwLDaEDc5gzx3yGN5k9L2LzxpTQsSci8GqYRrEqvOc+6dqNK7
	/Nfv8EISBoMqzkoHvlNqi67V4ipAY/VgiilNYuwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647281785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fa5n2j4tG4bPaEtzTZxDGnEkCoMAmyZQvcqRkId7jGE=;
	b=MtdB55+5dTulzrJvSmXeb05zUOFA56n3XNam4wvCn5xeehYZ5/sFEjwfhvoc7RUY
	E6zqx6V7BWcJiw40iyHL/x0DZR8fVk5S5KW0OKtnxltP1z6FfrMm1DVW56diRrKurPn
	U+RUz8EBKu74a4c+vLtYrSk0PJJAR99yeteRFQr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89a54837-9355e398-a830-47db-805c-dec94422c128-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b1d5892bdbc89637b077151e204b0ffc0a5cf58fbd67ecde5acedbeeb07f46
Date: Mon, 14 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647281784
