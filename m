Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BA7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654949519;
	h=To:Subject:From:Message-Id:Date;
	bh=azbBLVm1kGl3mH1KzApQjzcmz5J165fy6zLmCZqsXdI=;
	b=TsrnlxQK2x2uv+m3QvcSBw0KF4e3DByg7EaoJjmPPsy9FQIIiI3KzxXBysz48JW/
	dhcF7S1T8/2KH1YEsqfE5yEFR9rqj8H1JV2ygtdaQZ2IMPRh257UT7qjcBh8llm9nO8
	gV3vqM2g8MbL7GUfRenpJFvosVorfua10c4OMLA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654949519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=azbBLVm1kGl3mH1KzApQjzcmz5J165fy6zLmCZqsXdI=;
	b=cdPoFUWSTIDB0XfE+4Af9a3i4zeIVzXNOS7vLU2S5VQtzaoW2H1WoLjKyYyREbOF
	Jzjqm02m9IWPo217PfpH9fU5fZnDEyAY1wXJVmkfTH/Gs0X8B8L+jdJq58WdnOWuaCm
	iKUrmcWj5LhaHG4Q/w4DDLydvtASMtkfrlHo8AVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152ad9f8c-28b01b53-aed3-4170-ba77-e0186223e3d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7805cd50abb772e92411a8c1f68ebad8f300500078450bb1e9a6796bdfe0d720
Date: Sat, 11 Jun 2022 12:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654949519
