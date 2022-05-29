Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BF92917
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 17:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653844559;
	h=To:Subject:From:Message-Id:Date;
	bh=T9bKsY+mWv5Xc0PBQlz4AJdSsjFjWhdyWGTFuY9Na+U=;
	b=ORLeqqa1Il1AphGlf+WSMp1kRn8p9xrMM9gahyzbl2zWGILEl/WyG22LhIvypqEy
	LzDSYGY6QG2HqhGzl7OxsPVKhRWNVxKXcU4c/GgmBO14SkFyRZHkzUMDEsB1IFtggX6
	23WFTl6QKNNnZWDjvOZiIfpamg71WLaWNuF24Ghs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653844559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T9bKsY+mWv5Xc0PBQlz4AJdSsjFjWhdyWGTFuY9Na+U=;
	b=O2caw2fAmoCKDn8DhGcn1GTxnjMsoCuccOXfnqlvs8NPj98sAvDMD9V6ndgFe893
	P5Ynqta1tLzrM88c1in9xfEVheVmco/FsaVagh/9vjA7Sbo5UBYyicyWKMsZHeh7SZe
	WOId2qcgfCBfjKURtXrlxC4Bjtyx1ZwM8levXWRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110d145bb-1ca45752-080b-4b0b-aeae-ae6309df976c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35ac93cc44ac0485eaff042f1ef787ba8303182a19fba7fcccf827fa19e2c158
Date: Sun, 29 May 2022 17:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653844559
