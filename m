Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF0E2F23
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 20:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649882158;
	h=To:Subject:From:Message-Id:Date;
	bh=XLs0OmiPeVUEmPhJHxNpX1JPo7noeM6dDfIYdNMvg0s=;
	b=HT2rSbuhkSGkc6/5PkH5UPBYe9f2nYD9ymAURQvaGgb4fnOeQNdbybeCS69yOLPi
	EYjcI8WIkmZsl1x4syVnTF5g3N4etJAB5CSOzkyZwjXeCZBJtruJLk06QIenwMWKuKH
	U2zKaa/xibotvT1KeHaXLxlW8Fc0mrFB/o4Wej+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649882158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XLs0OmiPeVUEmPhJHxNpX1JPo7noeM6dDfIYdNMvg0s=;
	b=Y3Ag2OBjnk12UrSfsr8KDhCMe/aV5za3gd6vd0encKmJGYNbhvR3KsEWgXTQpmCZ
	2hxe5ZM5U3u+lecDL4sbQha02xmNVJuZ4K/55EF+I4uPalCSt2dUctUbw8vvtuLvApX
	KyoxsTu/L5tiLpVE6dM/okm9NDLz8C8JqN8c2EI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018024a3d4bd-c6a5ae82-72e0-4a58-9a26-8b5384f99510-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 889fdd839278804ee273493dced2a958f91d6850a5d765fab9ec9bf0a4717395
Date: Wed, 13 Apr 2022 20:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649882158
