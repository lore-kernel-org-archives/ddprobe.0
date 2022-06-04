Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07783ED2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 06:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654324319;
	h=To:Subject:From:Message-Id:Date;
	bh=i9mQCs9gsCimzCDYJX4JKSRhNdDRVQyYsFMA0+a6tq0=;
	b=TenEqxvlvc3NGr/SlKnsgEcirXelHTWXujj7mcUEr2HA3avbkt+1YsYBvEI/CC8b
	Zg6cCz7mUv/pd528fFvfpdgU10s7BHYGoW+65bRSN3cv2IVJFEwOUVlww+2E7WBNPJj
	aOLo57EAoett4/7n/UbPVp6ZgCdOOrhs8FPQsghM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654324319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9mQCs9gsCimzCDYJX4JKSRhNdDRVQyYsFMA0+a6tq0=;
	b=JR6gOHkzDSaLH1NB/DQ+zqMcbQXWQkr0LjIMMLmS8NHZvzSXoHTQeejCxhU1Xsoj
	dj/aQ6JPxlvg66ohx34gJC3q8ePg+ZA0BGBcZK2iE316Ba8s+CxUXVMEFlA+jC9Sl4R
	DzY5+3QZP/Aqnhk02qDzqQ0JLZJe3NihrLpByV4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d69d3eb-04f59d69-57b9-4ace-b4a5-ce6f0602a15c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf3a161c6aa017bf84dd097d445e72bf80d0ed8c6a12e9b41cf894c366d46bc
Date: Sat, 4 Jun 2022 06:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654324319
