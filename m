Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBECD3FDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 22:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655330699;
	h=To:Subject:From:Message-Id:Date;
	bh=KAo2XGNHcMjlsyOsWrS0nQK87WKnOc++mjluZN484D0=;
	b=j9TaKOF7VJh9+4i3H3yT1SuW1jY8NE2V0aLeGNRAMtXqt/Ud5e6Y926ewRkiEwF7
	d4PuEtq9GW8zMG8nLniGAD14wSnUVSjnaU+dJ+F9Eg5hHW7J6fvBUfzTdwnbdDPp6hj
	2vi3PT4uKjQNbNPzg/v0QuuIJ3PrfPpwDsQcEgrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655330699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KAo2XGNHcMjlsyOsWrS0nQK87WKnOc++mjluZN484D0=;
	b=OiDd/5NtA5SNCToqUoXwi7SJfDYESXIGqw2Re0CW2MsLg996y1KxTfr31UEZs7Al
	a5sdLyAHE/PtevzQkPDfSDGvpdbIV3EQx5IZzzaeGIivWNLqP6J6V4T+v+d7IhjDrn7
	tqnlW0VDZGiIsbDH2nxsOlBz8epDyPv+kvpdX4uY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816965f7e3-1a8f486e-3580-4ec9-b3e7-74943fcfb9cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9348aea467abfe887a8e7ab70f365297b34a66f77d65268972047ffe9ca560c3
Date: Wed, 15 Jun 2022 22:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655330699
