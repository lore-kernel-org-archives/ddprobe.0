Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BEA7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660793452;
	h=To:Subject:From:Message-Id:Date;
	bh=cpjoWXf19gcXW/X61XUk4UkN+HrVxDQ5Ylk9SY5kQkU=;
	b=Y8jLb333yMmVCK2i0LLSH7GSwXrmBBLAQzrH9H4Naytw0M8Rk1D+qmktii2UQFU3
	7kWHtybyD6qh7bc+tvHT4hMemhOJ9Qn9uBXV9n/dGIENjqYO5GyXlPkDXzI7YA7rCqW
	vWcvP8DTy8YEGJS54YMciowWDjUV9dXE9gDLfusE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660793452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpjoWXf19gcXW/X61XUk4UkN+HrVxDQ5Ylk9SY5kQkU=;
	b=QwWx66c++PfQUlaJ0m0IgtwaMTPbx+/+7WBouQkJXY3ZTMV3k31Ya0VDjU+PIZuH
	HTPRY8kh+tuuDHgpa5aomjy0MVRYRM2H7cmyMlLAqNnEsjGwQFevlIpeR3NRF/Rkt2u
	dKpRy7nTfAAmyBpXCkYgoSYCvqyJxMy75G9XdhF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af00f853-e5b28ff0-3d57-4c68-b740-ad62b3529173-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d860e45d5286348f66d37498c399705c9f4b18ed013abed1c4bc50e3a4edacb3
Date: Thu, 18 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660793452
