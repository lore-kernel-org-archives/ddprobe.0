Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C1528FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 14:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654613879;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/UhhqwomYBn4LDtYD1RJSh53ehXCMCAJ7LVAj0ijVQ=;
	b=hq/8wxw42Zf8f5cwZWTtJZ582gME33w1KF2nHQm6FQFAPcI5VO1dDtrYrgx+ZV13
	em7laIQCztPO9sjWZ+AjpApctrF+WFTihpXqvXxqIH471aYguHZk0d1vKBxTydv7uJa
	jqh6kWnWrfMmca5ZiYYQhFE5+b3ga7vxcQYwuDP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654613879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/UhhqwomYBn4LDtYD1RJSh53ehXCMCAJ7LVAj0ijVQ=;
	b=K5UhKhbE5RD56vvVkQ77iyU75bjGUf6zIvn/v6EDNb++aWhaNOjzJe889tNF9x+Q
	YmmcGZdvREKj5wqqGacCR7OH1mlKipoYyJjxeqc1CkQsholtzV/9F+/Q9C57iWSxysB
	5FUb6Ngsb1GpgPeDxnr81e8QJNqA7blnydHFlUWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813eac29c0-2560c47d-9b0b-4dcf-81ae-e86fe5abc39e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85bd38eb41406fc8f184a6d7ef1848bbdd7c33b464d39b0149989408ad48e0c9
Date: Tue, 7 Jun 2022 14:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654613879
