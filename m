Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B407B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 00:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655513759;
	h=To:Subject:From:Message-Id:Date;
	bh=VnVRyCsBffFET6pk3FoZUUdAbw7JssAc7j0XCXrQeuY=;
	b=Ny+p1uBy9jizbHlkWskW7NW9OxXN/70YUyh2EBvOQh/7nF3dTWEiq/8XzLaJdSi4
	r9yGG6GCWG3QkyTXxA/0hU6RNxZuQ5M9SyXl/RlPq0yjXZx5yWMNTG8MaCELvWH/2hO
	w35dlQKvHK0Jf6AUKnylehNeKi8vfb/1Am9jtXHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655513759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VnVRyCsBffFET6pk3FoZUUdAbw7JssAc7j0XCXrQeuY=;
	b=icReDxYt0hCZPXhURIhSs3MW1WSUd+2qBoS6D61kq0GSM/OrNuwNDMfdm5pYH4qi
	5PUadHghwi1r9zdWsDkH9Q9L1k/JUbluse34sDIGQDkYonjliXuJG4iPUcipjPuYzck
	kyw3nT7BC4HW7c8ggpkxkhP7/0/4yjjMoTF/j+p4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181744f3dfd-05fcea96-894b-4f6c-a301-35258b0c4666-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c53b5fc27fb0b38840a69f11f239afa86f234b09599637d41191468629a4c07a
Date: Sat, 18 Jun 2022 00:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655513759
