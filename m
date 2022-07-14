Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D214C62
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657816013;
	h=To:Subject:From:Message-Id:Date;
	bh=3/A7urE0Y8voJzHmInt5em3SxiS7us82oxg57m8bjy0=;
	b=dlduwVqgCkUMC4s6tV0yYVuZdOe+Djaubk8qDcy4+8nBCQIxP8YGiR/dpBtC4Stu
	nIQ4gwpaOVJGb68aGPyJsYHLsAfrl60ysnTDFwd6IRNViMd020e8ZnAochUCb3sJbmI
	5xPHTGKTirhgJjn9R/HRueRI0dC9uIQKwNJEkSy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657816013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3/A7urE0Y8voJzHmInt5em3SxiS7us82oxg57m8bjy0=;
	b=kuM0cn+ZdBPybGNXeFSeSadw/QoOENIsBbXbFGMVGiK0RELFk9opo/TiMX1ZkE4g
	O/HjpT/OqWVF7zKAylnjYf4uksEKuvb3VwuOD1uhJ/EDOkJ056qZAjKlQI7d14W6S4L
	QSsIyIlV5cgYwyrdHjxBDD9c9rU9Cj9NUmoMI160=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd88d636-89d8b326-f413-4bde-bc12-d509fd148f32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84d696dfe7f63839b6228c75a52dfadf1fd2c9d5d708ceb047a47270063be6da
Date: Thu, 14 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657816012
