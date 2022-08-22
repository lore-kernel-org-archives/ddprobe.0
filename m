Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698EC4A02
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661190652;
	h=To:Subject:From:Message-Id:Date;
	bh=NT/ON3KJU5CnaWisUbD/AfldmkCXXDDuZnilPjbqgUc=;
	b=Ev5rPU/qwxj0jicb3lF7j6w8XybGsLslMCocROOPfm6hRktXVLSYBMthQ5dwPx3o
	4xPh/bP5QGbXgbXkgzktYqEKJ3Fy7T1NRQuR1avHiAFRJvB/oPdvs3kzAGrisQRxxsB
	9+g7EWW9lUxwKlu1WEfKx0pHgf676rmkqKqJf0ek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661190652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NT/ON3KJU5CnaWisUbD/AfldmkCXXDDuZnilPjbqgUc=;
	b=SRpmex8BfDje7mXiFWmhoQOAPkwhZzzrkgfn+jvocoaBsVLbmDbwyNkb2kXRonL0
	4+xIZdVhEQzlBYZa9DAw05we7AEmSiwPmgjbfoR0ksSdgbql3HhJl6PWAiuPa5RgaOj
	T+jG08dEaW997CFx8ecHRZf8ZN2Ht6h7AfMqEdD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6adc2a8-908c2f8e-1c90-43ec-ba4a-b28a0497873e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6026f58981a37a0f440ccb57748382433b2b64e8a8a3ba2e1c48643c195a46ce
Date: Mon, 22 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661190652
