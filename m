Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F082F7B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 14:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653833819;
	h=To:Subject:From:Message-Id:Date;
	bh=8mTndMJ05AEeXhCEBYYfw4irG5iKAQcUo3Fl8/U8pxE=;
	b=ciHH1dh+/qCZkbu491JYganQQc6kADGj9dam6Ntb+1qsWMCBijM4I3WQXlBkVIW2
	iFa0sK6sgVvXm1l/xwPgKdfa1e6St6u/tuRl8I3pDmiW/tfVDxnJgfkmN/UzuNRldlJ
	SgkYBylMs78amtXKzH4wAPJxMSihwQFmBUva2g/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653833819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8mTndMJ05AEeXhCEBYYfw4irG5iKAQcUo3Fl8/U8pxE=;
	b=ZBkg+dgfNiwcNHe4HFiu2y8/Irnu+1UTes9haPJNiUPmj9KPrvWrlQg2MVd1/WD4
	Pep2QwBg4+M8/9lA5WL7Bek6WXTmbSO4+u1i+T+la9AyhCeAmLYjqQ5MU1v1i6csvJy
	egm5/FIe2FqpSdUCFkqM2PrLBPcHZlWBA/XXeSk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181102d6466-9e519195-6414-4a47-894c-9d01794cd549-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3239a1e0f10ce2c9ed6bfebb5d667ee616da7456b1a33a5c9b620be07d4201b2
Date: Sun, 29 May 2022 14:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653833819
