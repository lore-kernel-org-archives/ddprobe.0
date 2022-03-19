Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32C817E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647693984;
	h=To:Subject:From:Message-Id:Date;
	bh=iX4DAxGzS5fUnTXU6R01iuLhmgQQT7dKPD5frWWSwZo=;
	b=Hc9NX1vqcOCz5BfiBLQnkooJEhgknYls8o+QuOJVc6rQ7+q3A9ea/lMGet6MA5Te
	qV/A7JUu8pptbVivpSBElstgqM/6jChyQGDa+SGGpbyFCbZpxh6sxX0q1KJ/WhLhPbq
	A2eJJUkSC0gEa6FaN4GO9r3UABOqpvIxLK8xbD2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647693984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iX4DAxGzS5fUnTXU6R01iuLhmgQQT7dKPD5frWWSwZo=;
	b=i50KehssdgCdpXNv5zsrKd1vLJ9jkCqwYBWei8RjEF5wtYnSZIbE/jJ/T02vFrQj
	TVR6afnrCUyK56zm9DV/go9RNNlIrcqhLGkKQLRwSFpjXoRJkIQ25jyxwbTD2ZRbkJF
	W1kgpuVa6jNGc7IHgCO4UXMc91TChwup60Z/rSrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa236f3d7-7c7718e3-dbfe-4186-86f9-ad3edd57dd64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4882fd73cab6beb8af47c29094219b594b31d4f7046dd62277d3d92a04f5b595
Date: Sat, 19 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647693984
