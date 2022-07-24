Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54A328F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658657212;
	h=To:Subject:From:Message-Id:Date;
	bh=Fw1hXoumod0AP0IW/MiDKHQM/eMB8Vl53qfV/GDwoFM=;
	b=CWM6N2rpVv3kvG1Cd/cA8B4mby2pnMkzBINzN/7icEV/miUXevMRJ31FDJyNSFNA
	77+rvR0DjTH+Zg0lTkjcwRzR1Sa+B3fxHfEHMluiFDfIlmPb/f0rZQPB8VGn2Gi1kg7
	mO6dOA4D92O640oVdPOVfhRdhXdTbr8kG3ML1j0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658657212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fw1hXoumod0AP0IW/MiDKHQM/eMB8Vl53qfV/GDwoFM=;
	b=ZeA6OLXm1UYPHdxkdd1wFpJ8SP33PevkjddecAUpnGR8Bwubk09hPAa5HN21FYJN
	b/diuL4iaElbB9CNCKanrNST80XbVlfKM41bh1jbhkN/+pcAh2dFHufBwXQtwllzn2N
	Qb9ffiuXO7go+KH6jmqH4xTZxKFiPXT/EniajWg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822fac8761-3bd36f1d-8aa2-49fa-97e0-2ecf4bd2c046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd83072c2146a4edf085cfb49b1c2ad21e6002d17cc5198edda26e1170d740f6
Date: Sun, 24 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658657212
