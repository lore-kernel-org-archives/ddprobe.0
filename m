Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B033686
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647549385;
	h=To:Subject:From:Message-Id:Date;
	bh=QvX2geBjlQy9an1cdbzHfP235sVRMQt/nbJMrQwVapc=;
	b=mrFWuxQqiPHZsv2SQ84kbOyCoLAtIuG6Vm2MjoUo2ulB4UP42e3uhlEkRNFxRS9J
	gz7X4Yxa9KwZLmAbjm/IakYbvKejTua60gGzQ+OAFO2/lt80ZMV2BlbQSu6nZbX7vRY
	EcCvHUCeRgFuBcRjW8f41PEew8qV5a5V+adKpW+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647549385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QvX2geBjlQy9an1cdbzHfP235sVRMQt/nbJMrQwVapc=;
	b=cxZhA5AMtTZj+OLq/t7lVkNO5uk9hdf+JZvNAMaZG/avqSuX1S3ZkQUXti1uZEpe
	vjYh9S0EkerWFJZJdrc2clBG3FJn6eJWHd5UyV6jPjh9Lg4wDshdNlOetlIz7FYept5
	0FYlwK1uVQdVHzrpFXhmspl/rcgvx11xwoBONuS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9998888b-783bd0f7-6868-4ecd-b1cc-1902ef4ce1a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05c0e5800560c8fc542934273079dcfa401a076ed706efa2d2d4b727c6bee2c
Date: Thu, 17 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647549384
