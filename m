Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5626160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647720684;
	h=To:Subject:From:Message-Id:Date;
	bh=g0nuMf4JVe0iHDKJBm/O2yFMDYuxTqoIubTbr46BFao=;
	b=bAut8FTEsafWwv5TU2ZL3RkM922LHRH45c3aGi0+A84YnpD8621I/tsI7GFACV5o
	wMViMbQrXGWppNBuYRq62LTWPEBQ8BqwU8ns0p3+HyfFXP1o6K/ZH0fXSn+nva0pxZX
	QKmHoy1dUInWUxA3kM8Yl6SZ4IVXm9Crh96uN9Ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647720684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g0nuMf4JVe0iHDKJBm/O2yFMDYuxTqoIubTbr46BFao=;
	b=AST++HmKvNaOv/aSQubrDgbMtOk/xloASIdbwfhnL+h3XcGv5RIrlUnRnqOI06sD
	FsV9+xAhQ9kbiaCn592IAb9XfnF3cFMUt0mmXaX2FwAAQ1xxoKAInaW+WNPCzHZBzHp
	I+kQIv/U826AWCELXl99pfYjKapG+upFSN/3Jiho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3ce5d15-15e13b00-ba0c-41c8-aae7-e550bd895b5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 677cff09533b8bd5fcb858898d2cefd7004accfaaf87ce9d680848df2884c19e
Date: Sat, 19 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647720684
