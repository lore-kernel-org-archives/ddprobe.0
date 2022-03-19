Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6638E17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647694884;
	h=To:Subject:From:Message-Id:Date;
	bh=1oKkbS5Bl4mNIktN79usdCyPBRISp+vQcu00nfQSV/c=;
	b=Ma4M8qgjL4AWafvGHNA2OutQ4fJPxPJCzrYyPv2RFoTiU4k8nWExn3QW1aQwA1Qf
	5JX7ICaS46N6CYsoh3U/E23QQLiE6p3gRVY6FF5X6lmqyJoigDGrIg/sYC91FIEwJV0
	Npzq6QxYpT8m56X8an2NKRqtqTjcp+s18rvEk2z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647694884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1oKkbS5Bl4mNIktN79usdCyPBRISp+vQcu00nfQSV/c=;
	b=ay5GJpuE5HkwR2xDW2yOv/yxKg40/MXD1bDeAy2GZ2MEtP2l7WxbA0a8kgTZtcXe
	ZZTC1P4awoRcZh4I4FUhqizMkfYaPqz7WM77tJM+pmRzxnYdCChbZq9B8L1fs+L1yLD
	tBhNNxubPtNu97IXju+YMO5dEQm5TFBslPjy/7Gk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa244af7e-89ff0ce4-bc32-4605-8491-8c9500662e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f4f39af1fb5d409ac4694d8d5f785bba066719d33d2749d8868634a9797d6c6
Date: Sat, 19 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647694884
