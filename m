Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4B17C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 11:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653563459;
	h=To:Subject:From:Message-Id:Date;
	bh=iT4TioCVzbava+8sHyrimjVMPOmnZXnOTUtWAEtyr/4=;
	b=E4SYg37PQEFNi5GRq6BHZn/54rl7m5wIBsJe36K5Q7b2OFwJ+tW/voKrF0UhkikX
	AQqb18iGYL/wdC7Rdth7c6RAS8BEL8P6esf2K+M0DdhGYbqH563VU/f7dZqyS5s3VLB
	MqNgUzLnncQno6GWSWwbayWuwmkyjvnR/CEeukVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653563459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iT4TioCVzbava+8sHyrimjVMPOmnZXnOTUtWAEtyr/4=;
	b=G3tjiHoPdaHSteThguC+wKc5vOXDoNClEMQJWChvNQEQeN5x7h1VK0hSkKNZKRIs
	V+9HoGjp58xtsT7FrqNRBh+pJU0nMAOxS4Ts1JfVTYOvtbcJkTvDPqDvRd0mrjArBq6
	/S/dZhpj55LejaYDLeBZtM9RRCWl1mdzWVqvrndo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181001006a4-35ab3213-5292-4141-83ae-f4587ccdc9d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 119469e87d58697722348d7a188b7f861bb3ae6de21e4e5ca4e06ad6c1035784
Date: Thu, 26 May 2022 11:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653563459
