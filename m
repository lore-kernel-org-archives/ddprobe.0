Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36B17A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 14:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648910158;
	h=To:Subject:From:Message-Id:Date;
	bh=a/hAVMr9RcU1aA4EgAwByTHYIxyY+J65ahu4TSQsqlU=;
	b=m6xUZfFmkq3mRu4toX6XRhfW4jxcDwvifFIt8p+T2gJzLEFaKayxzH5Jj0VDyUv1
	pX4PyhM5xmz9S6r6qCLjhgSR0DkfeE2kz1uGoX+vno9+YBkFqoPMfgNuF0zyBHvIJTC
	GuAdjuKD00cu1Fikh2VWjaub2uIbzWloJwpsYkrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648910158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a/hAVMr9RcU1aA4EgAwByTHYIxyY+J65ahu4TSQsqlU=;
	b=KAXZewbo3HWmKlnFl2rDJDhqkFS8DrY+SNe/3q+dBa/KOeQRcjI+dW/2JUueA4cx
	fBLwiSvAqzW9JpgUKlwNQVUiwxII2dKumwlbEIcMQFY53CvPA9yF7unfJ6rb4+Yrc5s
	R+kQhm8p3zs8W8GWKOmFa5nyVJKmQoxZHnENy3vM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feab449ec-d6505634-6176-4f4a-912b-7b435590a684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97dfb71310eba36de11685f8daf9a4b337e8297674de5abc947c3dc7577b2656
Date: Sat, 2 Apr 2022 14:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648910158
