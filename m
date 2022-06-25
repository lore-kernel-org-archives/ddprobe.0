Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0597123D6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656157612;
	h=To:Subject:From:Message-Id:Date;
	bh=P6zRtu140oXe3435wAyGwp7mz5C9Js+M8lsd5gLa0Xc=;
	b=EBcjCwoFd9yjrWEhUmmNJtGAvdpId77iyT+a0tUj9vE59kGGdzf9AocGThUn6Rtm
	UoEspUtfdUHXqgysInTr1skrsFfd/qw8gcOfntuC6aYO/PlyJTueaAFrcCsnFVYcgf1
	O/C4gBA4sFZIvB3XY6mcl4LOyza0Wgmg36V/SpKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656157612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6zRtu140oXe3435wAyGwp7mz5C9Js+M8lsd5gLa0Xc=;
	b=S4SgFl2AyHQrV0kTao7GtcDejmQa8fx+7KwjOVsMegRrZTFhDTgVa+zuvhIZgjpe
	3DIAbH6jwIyWa2+JJgy9dANO3UbRoq+Jfp+NBAkclLy7KS5699kuZ4xgtxNUKhidVIu
	ZjKemJc1TpYLN+g6GGMZdAw2QAosy5sRBzycU0y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819aafa920-e36a1232-ff82-4016-ad81-9daf6d280802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62aee611f10ca33869c8f359dc762c84cfb536945cebbcd987dde49c08bfe41e
Date: Sat, 25 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656157612
