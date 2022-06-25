Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000887A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656173212;
	h=To:Subject:From:Message-Id:Date;
	bh=2XdbPcd3wbHKZ4a7rm2s/9wDZgC25yjWU9ZRKz9m05E=;
	b=ed4/v5P6BXEFhYio7VYmJw3DiwROfY5K047E3JGSShw4Pcrkx/i/GIjoDQv1u90i
	g8oAP9SsCAZHKkKkL6a3Sxg7RycBFKsErtOnXNEQKI2HpRBMUz7dqhmq7V9fRfiO1uH
	uVVMY4nfu90qUTB4zVLok4YinBm3FoVTutfUuq+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656173212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XdbPcd3wbHKZ4a7rm2s/9wDZgC25yjWU9ZRKz9m05E=;
	b=XTjUx+rb34kb7Uy8v5+dAc9p1fx4ZeK9BqbTbHLvR/8WQkWFSOLDYmG3gEXScuwq
	rsJh2z5hYZfk2wtSO7aVOxAo8e73UF8/vdS1fx036ylNJ9GI9N98qFnCI5Cld2iEKBl
	/xZ1FjpK01jCfzZOR81yrxwi68dMlokk5/DuwdWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b9db292-1bae0e2e-8ef5-4466-9bd5-2ab55b6d32b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 078f1a41e3ecc553346a4e72dd5c39e746f13e2a35a9cb5a33b737c4e0fc7039
Date: Sat, 25 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656173212
