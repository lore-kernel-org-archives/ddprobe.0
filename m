Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B01FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657519012;
	h=To:Subject:From:Message-Id:Date;
	bh=idY66UWk9AIamc5LWTKDE24uBZCsb9iAxvh0etag/pw=;
	b=J1nNGJt+FzCiqcx6RTi1uYCgG03u2V9Zwj9an/ZyHqS4z3gtriAaU+2XIMbqP5eg
	I6bIpapFOQt5uWISOKFx0UMk4yE4tZ+d7BeZ7QzK+DyO3e0i8Gii0GgdaQ+4IkGLlfA
	abeqJYC+o/Bmovar48RFZrhycYwJBi2ruPFdCH9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657519012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idY66UWk9AIamc5LWTKDE24uBZCsb9iAxvh0etag/pw=;
	b=TudDjLZJ5sAwT0n7/hgndf303nq9UqSk9HsodgqDcI3qFi8/5RGfePVaGr2FbuQr
	GNPkieu0qNWU1CaTx6hsYeULf9x0e1FgUhWPfhiCFOjINabX+nCHCNv/RbxwDqHD2EV
	vbsQmLE2QqyX0/cu9ADCKbsxptOZy45/97Fpc7yI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebd4f9e0-53469005-d827-4163-99c5-cc977d7e2444-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28864fde1eca96c033658a5169d2e4cd6e3017beb7beb32bb1a7a1436c9ca71f
Date: Mon, 11 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657519012
