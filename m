Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415D63D68
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657901812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ez5tbve/qOOCCUo74Jw+z4G5qAi5uw80gIM/+gkjFwo=;
	b=Dmj4J6n9cbqgbVBXXnnEBuAXc1pKncj5uHfO6cydpIgSBMLPPkf4QaDr9qaFcz/d
	Q8rjJistFM7i5C7bjHtYJxNNKHUQh/mkLBm7S1SsDXEUvHEi5TnezpTlntToHOWw5Tq
	da7YRk1gtAYomF9hUGSVI8YvO1V6x/jPN6rHZoio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657901812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ez5tbve/qOOCCUo74Jw+z4G5qAi5uw80gIM/+gkjFwo=;
	b=K//BEJzYRoItWzDjlhjkuyjhlOIj/WI6DNITc0c2LJouVx5q11jOPaPDZHLlWDF6
	g6JhWg1wz333ThU3JVg6CDvxD+PZJ2mzurZO+21QhQP59YnFn+X4T32UJjHJb5B2I5b
	cXt08LiUL/go0LULPAQfzSLDEP+226n6Znv0m4wA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202a60a5e-2b7f2d49-2991-40df-b3a9-a8a767ddb2df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 870a1e75adf5bdbd6908b860627efbb626cdd21619b4c01ef7c2e6b5d4346c53
Date: Fri, 15 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657901812
