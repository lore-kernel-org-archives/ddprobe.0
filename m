Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D622B23B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653723599;
	h=To:Subject:From:Message-Id:Date;
	bh=a1KzkxprE+VIKc4OQgbOSIlIr9/DuuOrt/Omz4ESlLw=;
	b=CnPJsnWJesR5LqXhW+kyk2qQY8Wax57STO77F8JqapuEKTZO440yxMsImbApkMgn
	0uHLNBSnnjpISsmifRrnRBRXHsFm3Sx1OKMAf8MX8y1rxAapN3gokIBSo0M1cxvQJ1N
	IOOQ9DGqhTtoe5y9c9HQGuvNoHrr+KbYkNKFE+dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653723599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1KzkxprE+VIKc4OQgbOSIlIr9/DuuOrt/Omz4ESlLw=;
	b=gaFW5P+VXzalJmFO7RUKg8lJ0NGbKsktQqHkCfj2Q3OjnQaR09U7xRkbrcXYbTIj
	wICZbeyD8I/MjiyfV6vTSDsC5BG2LQFsJKSut/ElzU/53RyUXYcNADvOkhDfMikNL7C
	K20bz17t6mgKoVpC3z6BOiujH0DXTnCT6rjy/KqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181099b91c4-9d459826-204f-4e42-bbc2-8e39df2faf68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34ef76151bd388155ffe16c8c43c9363f16a05840cc5d6dc700a5495258f16ef
Date: Sat, 28 May 2022 07:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653723599
