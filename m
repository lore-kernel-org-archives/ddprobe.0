Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CE63D65
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 22:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654121099;
	h=To:Subject:From:Message-Id:Date;
	bh=FI49wZP4Df4nQML90G/YwG1oNCy14gczsKMDpSrY4b4=;
	b=IyYk0q9cdT0+cubu7qZpRO27NJDAuHRvO+DExIMlbqtAq9T+hDrVXwAsQhcKRTTI
	fdQUin0kU7AMZtM9f1hORK6IhRz5cw+SpB07sjLCyMKyHpNQ+uf8xMjLDRWE8PRzC+x
	oFZJzUk5V1Z6joyadFVN2m1IOzScdmXoEu8DmX+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654121099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FI49wZP4Df4nQML90G/YwG1oNCy14gczsKMDpSrY4b4=;
	b=BqQAOu2KFPS+W29zDsc++bult0A4Zb8A2Aa64njQJYfzQyoj+X63mXg7W0Cv2W44
	4A92f9KpQfAsoeNjtjpwwfFjYK4bftLJNPMZI8nHsERlDsfy7Wej9kXHSAoIx3yvF9s
	rpJq3M212MSOLYgMkVL6Ge3yCm++6z7h6FlhA2+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181214cf020-4244c6d8-584d-48ea-bbcc-06432a01cd53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb727fe357eb959c126d2ea3ff7f1af8c00fdabee800a7dfee41d1c0c48d836a
Date: Wed, 1 Jun 2022 22:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654121099
