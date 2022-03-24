Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54921B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 07:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648108438;
	h=To:Subject:From:Message-Id:Date;
	bh=ARm7otQtZLa6UofMj7OwA3ONrzTb7V0aQty0xmtkv1o=;
	b=KXjYJr3Hl+kpc0Iox0LZM783Pantj7/iVz2O0xePBO4pCI/gkzB8Xvx9APcxqlJH
	swpoQwOir6qOuVXNppoUGZ2SMkICk7y1svy/bzOFxtFzNR2sTdKiG6f/Lo+fikSGZ4/
	A3xxYWVxhj24mNT8zte9V8G/DwfBNbHKAYTl0Crw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648108438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ARm7otQtZLa6UofMj7OwA3ONrzTb7V0aQty0xmtkv1o=;
	b=TM4WwjMzdjs0nFz2nKuu/abM027aR/iZoLNxh9Qb39kLQgjMPexJ4pejP+vzRIU4
	lZ3A9GrI97yOfzNCqIkTeoem0bNcObG9206RFuDtDCQ5Vj+4E/zaWvvu+TIKIThfTfl
	dsMYZIeATxH8oqnZU9upqDoa//1Mk3ZFCrnKP9ps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbaeb02ef-56616688-d73d-4cf2-b545-13cca2897a80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 085f1851a880cdbce72d24dec04c1e133accae268692c151db4c955c152e80ea
Date: Thu, 24 Mar 2022 07:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648108438
