Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CC9198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656227812;
	h=To:Subject:From:Message-Id:Date;
	bh=bJdX4gNRx7knmrhOH9kKTia36YhIw+Pm032quN6CVR4=;
	b=MtzHDZnw1LAVllRAGPD4sfFtz3zacExXoe/5QHb9wtaApLC5c1gwBtrNGp+0FsY9
	rL1IpCX2ykdw1p6zrPjd3aXUooM0oAB/PsD3XGh8CH4WhJ7AuWe2avoe1mDJnhXHErL
	0c3UKWsg/bJGxawCSunYJKxk3+Aav0ZI7zo6EDSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656227812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bJdX4gNRx7knmrhOH9kKTia36YhIw+Pm032quN6CVR4=;
	b=OJJmh3fr/ARE+70lddnnls5W/lDW4WI+wUV+67FSK+J/3FmzbVUjQVKbAPaEQx/y
	TXW4lI/scfY8Zy/aPSoCD2Mph+oomGaxShyjlb5BSQWXacFqn9tEtVpqAz5vVar4G6L
	976kDikosyIq8+XqYg4HbtdQnOtHAzBoSXKDVYhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819eded3ec-575e48d0-b450-466f-b756-c85ae4d4f5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96b9ff47a3f096583908f78ffafd3f01a95341f4b471fbb458f7f6cdf8793ce0
Date: Sun, 26 Jun 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656227812
