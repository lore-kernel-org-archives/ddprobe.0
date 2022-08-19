Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E746BC
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660935052;
	h=To:Subject:From:Message-Id:Date;
	bh=pX+drol6f3hihIzUDd9teiCbc/a7Y7Yw76dexc62TEo=;
	b=QrVyDiz0PXfHs6Q0gHYI13k0e47UwNx9xJQnroU7G2ITQs3C1J4F5lhlmhLRswDy
	ZO6BUbEhPqGMww9bjfHnkLEQjjFekS3rjwaxOGpMua0KKSYQYUmkM11h8R3JbxD9bgn
	DA4mX3As3U9PWXJO8/WhcqN/d1H7xu6Pnj+TbFzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660935052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pX+drol6f3hihIzUDd9teiCbc/a7Y7Yw76dexc62TEo=;
	b=fyp6igkjLhWfykSDeumACd6ML6bmUZNx/uaHrz24ba2Bhtg3iDj02YnCDhlmsw87
	ypkhGeagf0eMXygqOcfhUJFQJMp84lIIlWsfjP4wGam0WjnSUkYEatFY8mGyRcKn/01
	OvdcaycgIBexyXlOHZJR4o2rtKQLnnx2A0Bo9u/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7719d49-c88f7cfd-da29-4434-8a57-0e19d07b43ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b36196ae6a7756266cc00623dfb88da0606416df39d86f60b8552e497274a0c0
Date: Fri, 19 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660935052
