Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1720610E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656655012;
	h=To:Subject:From:Message-Id:Date;
	bh=iI6L/5k4gBB5kq+S2NxXIYZnXBC4yWoA2gmlaiLaNiY=;
	b=IT0jhqm2Q9O6zs6SbBLhZVEgUgWdiqglWP9PNgPa9yENLPlts85N8FuLiJch/0rJ
	aY2zLuQ9568tXlsK+1cm7Ol0LQHo4wL1HZxJoF5g3qwy1+wA4IzzgFFfsYOKLJ/goJn
	d3q/Nsm/x7gFCWbZp8R9UrelYTRQGxoInESYA5bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656655012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iI6L/5k4gBB5kq+S2NxXIYZnXBC4yWoA2gmlaiLaNiY=;
	b=CV2enRgiENyEMveNU7sbvglZAG4uj1aQPCMWVh5dRzWROSN7O7THMkJ4139xX+/n
	ZDz4WaEBSQ0bjl3Z4cuRh0nwLA42RL3GawaC8ku7n+dmvoAa/XyxXiH9f1dg2PhOf5Q
	COaYdkCT1v9IXaPnXRXqG9DTwey/Hp5KowFZWTE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b85561e4-fdb659b1-980f-4a8a-9e26-d18828632fd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc78f6c7c08685af7204f0e95df3e8aa14a97d4ec86d768939254553dfbbc04
Date: Fri, 1 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656655012
