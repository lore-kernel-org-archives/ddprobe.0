Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF6F7C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653238799;
	h=To:Subject:From:Message-Id:Date;
	bh=aL+XLzx2a09e+pOpxo/CmZRsbW2vJQbrhv2u4Svg4hY=;
	b=I0NthxSnoLCKW0yb5/naOHOMV1WrAYMZ2u+NuSIAJRcC8g75IzJIrc1UC8O97igS
	94qkEU1/exnCd4swHLOLTq5iWpndQkR9JrG9ki4QV44gk1ncJaz10KTR/6H1T3Ikdrg
	cgfoaznhH/2z+ooNRm8TW8rbjh0rGeXl4DIehggg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653238799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aL+XLzx2a09e+pOpxo/CmZRsbW2vJQbrhv2u4Svg4hY=;
	b=et6qCnqFXSUwNotm8pX7ub3Exweoef8KCQiwtUjHSHbWGrteCJUTSTdxn3Udd/Z2
	pGp/8IvhX9wzagLW1BObd3KSJ0ejpXjF6MnoZa/oZ9fk6ThWNxP7qrXbpxGT/DPnYv/
	uQIhIT7ZdYPLUr20b+Tc0k+Efr0hTnaEvUJIcDCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ecb61b98-3be12567-a548-4ac4-9b37-491a3939d50a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fed1c7de294727efa17329b619ab16db7e1e770498ce7ee2231d588dd9b35d9
Date: Sun, 22 May 2022 16:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653238799
