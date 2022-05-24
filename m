Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E437E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 07:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653376619;
	h=To:Subject:From:Message-Id:Date;
	bh=GQhEod+jiUPVvznawY2lFvBL/q5qR9xDlpijqE6H7v4=;
	b=Bqb31kgQaP3hozEdFosaERvjEmPEbX3So6lWdiCzSDh8CwEj7TlMCz2K/HzLTjnq
	o9EjU5S1biUugKCY5nr1KsdRiUEjVvj/nYa/b45cDtOG5Qieh6L7FTBQdHRJyXNsEbd
	0SDwXdo8wdXZoKba+z1vU6unohelhKAe6ge1Nu5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653376619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GQhEod+jiUPVvznawY2lFvBL/q5qR9xDlpijqE6H7v4=;
	b=I2+ANUBobhmirFKLjBlKqD4sBT5pzFwRXp2SDeZFZhFYjOaV82UiOFXh17EeLSYF
	juLZ9jnHLv+cDTLcgvgriDXBcsIdXQngXoeXClU9NcA4PqpHBsMN+vh9zw8NBZUOZmV
	aH5KQkEXI00HuNekKc5Fkn5vYAuKhf26243+abhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4ed1304-d8a6393b-e1de-4ed3-9722-bbfdd79eb0d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af659d9854bc07d028cb493ce0acdb22ffd797a4e333275a87e84131d1abc7e2
Date: Tue, 24 May 2022 07:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653376619
