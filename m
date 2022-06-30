Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DF27B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656608212;
	h=To:Subject:From:Message-Id:Date;
	bh=DeJUDgyw7TPh0SLqmnGoaoRIDBI6AVIRISxB/nevolw=;
	b=Pk6ssnc5Mw6JBHqw7TuAGNe1SUbMwzNJKLtF09zMI9+XvtsRZ4tIvVggGODbcPJB
	YvhaBG7GpDzpAhJgUdiWP7cXsCH5M3x68wDeXhyybpcwVjsgd0t2LtrKWtV5iLwWQcc
	ksHjUUgjUTAMld2BnnrZDxQVziA5q0+kdkczztiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656608212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DeJUDgyw7TPh0SLqmnGoaoRIDBI6AVIRISxB/nevolw=;
	b=bAt9nr3JUHM5rSH0C+/LaHHgyGbynN8ilJwku00GXfkdwwOH/OCAaOUDwLKBYxmF
	ZQ5xSiWA4pjrkuCuxhois97ZGnXlaUBmIAKjzXyntO2FYZoVZftTQIP/ywYVvW6oQ+1
	0W2jZpuP6EPIkISgQdCzGjHzDUgxw+0KRGY+4qAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b58b456f-9c91f29c-bbc5-4e79-8cd9-8f0a8126aa39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46645959ab4ddd10ed2c71f8a896e5d23d850510902e698bdae9bd0cf0c6fcb0
Date: Thu, 30 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656608212
