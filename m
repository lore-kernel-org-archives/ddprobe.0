Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0822D1841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653581819;
	h=To:Subject:From:Message-Id:Date;
	bh=ZeAB/fNMNhFbc/Gg5xh+sf82fgH0jAYeLyVkH68dmJQ=;
	b=hWyikARoqsYION0Ba5I4ThITKHubUh92ZoadO8c4Um3xVqJ7XeHoQ0YJQvMEvc39
	/cOO3WrujQfS8sy0K4C3c3ZF0i8ix7pjeaHn0k9tESx7uyXzFnPjh2k3HIQ0NAWRKFk
	cNzn4nyD7pjjZHhK12Pn4JYqS/ctK+Ug5aJTD1ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653581819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZeAB/fNMNhFbc/Gg5xh+sf82fgH0jAYeLyVkH68dmJQ=;
	b=CNZE1kCcs6TZQSSOVkC75r4Dip36ulRS5wb0EfB9UPDfx74msV7kS3EviQxEw0/K
	KGsadGl+ZnoMYoituRF8a0u+aG0PsCyuv11A4eLtx5//R+sPzZg2AE6+6pgxFFCyF3m
	ssPuds/aa78REqGudoAlKsAofmSCiEh5Ho3V5gis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101282d73-b8309938-72f2-46e4-a999-724c97622311-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d49373b7de504a73a2eca94df0331ae175588f3f352c41c739a276c0372c56cd
Date: Thu, 26 May 2022 16:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653581819
