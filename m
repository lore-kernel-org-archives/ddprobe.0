Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3779720FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657082212;
	h=To:Subject:From:Message-Id:Date;
	bh=omC5aRbS9GkzXAQy+FtGDJu7/0nLjXhNpIbh4DqWzhQ=;
	b=hdoUyNUzSSZqwIgsbO2XVw4vIGAwhtemCVg6yRwt7TsFTLuJfJLECOfaQOK7ZwXw
	DLHdzMOfwOrAwWzT2jV3ENfUS0EDWtZyghJB9DzFmponJHYaArkFcPqejrA5oTKbqrY
	oyqHB1FgawbS/YCq6b0EqCDy62m7BxvhjWOWRY3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657082212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=omC5aRbS9GkzXAQy+FtGDJu7/0nLjXhNpIbh4DqWzhQ=;
	b=MxmV4IQpk1S3OB4nrPh+cvtaDGIjIs8zDdBi/JT/WXL94kzAn//0uYgLk4ikUxyT
	V+fWZ88CfUwCTwPwOLUpPMtGisZGa4bC7MNNk8BF6xKaPbQ2rKwhCSbkUtB/oV5yn6g
	0Ch27PpgdoVj6UVXq3wTIfQjCbrWD7KzC4A6+lPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1cbefcb-07185830-b4da-4d77-a266-a9bebf1a8105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 015f20b8b5c0dfe1f177dfff060ddc06b008d92af29385fbcb89903daef85a0b
Date: Wed, 6 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657082212
