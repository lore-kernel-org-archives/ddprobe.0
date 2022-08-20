Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4515320EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660989052;
	h=To:Subject:From:Message-Id:Date;
	bh=JhLahsfpZTCBEfm5WeSPv8vq1h74P2xpMsh7CUtoTKE=;
	b=PuXb/3m+On8qBOw9H51cwHmwK+WeaxjL6DFmPi72Zw7U70+s5gbq5YYk+6Th3VDQ
	7Whs6fJNkeME2/W+NyvYQEWf1i0c1E9nxaZf4WcKVDRzUMkOdj66E1sjI1QlJ2SN5P9
	GyndtjbqQYuw7fofS684jlyTcJxS3VhtRnJ1X65I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660989052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JhLahsfpZTCBEfm5WeSPv8vq1h74P2xpMsh7CUtoTKE=;
	b=KzVX5fg/1OOfyP/wqRf5qMTU/OYDmAgdjRKUfnZc3tbyEbFD9W6p8QESAZREmvWg
	wSKM/EXD8DgVUo6msnS5OoILShhYDfAGjb7Dvt4o4P2ALxcM228dZrgPd5E+3jNqjmj
	roAwAh3s3KkXuJoJXqxlQulyKjzhnQN3R2RdsML4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182baa996c5-347e1bde-84cc-4af1-9edc-f8f722c9d720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb0434f86f3fe082c3cb755d973d67a573249f29120ec96d8bb8fae8d5d4eab
Date: Sat, 20 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660989052
