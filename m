Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DCB3D65
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657626412;
	h=To:Subject:From:Message-Id:Date;
	bh=vq3o4zFm03pXOnwxi6zVbzkbmCoNj8OEITXABTX3A7Q=;
	b=e2IIdjvjZNoL8bw1utEQ+3RS/F6BY+l+XwBbOodjDSX/qDkYP2W4qaBdS3+uzoo6
	oZpA5c0Ku3I9D7XCR/ANuqTEdlcKe33irojzP2cPaRpM5zrDkkMjNXC5To4N4KqWMvf
	ZzF5QnBl+FDEgVoOU0hBwdny2IMT7Qgx5RSSFFZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657626412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vq3o4zFm03pXOnwxi6zVbzkbmCoNj8OEITXABTX3A7Q=;
	b=KSKDl1CPY4jstb24R+V3n1AiF9ut4SgLBgLifvU/cCRAKQ1EPsUUHwo3ZOTxJ0AL
	cV2g+F5MV+qoC9aag75XOddLuv086KqS1roJeG7Q1jGfU1TL3leDT2S4aRdLeG3ZGyX
	cyFgxnw6YyTsiCbBKGdIZtpg+N1QR5HyZeh4bQi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f23bc515-7622a730-f4ce-485f-bed8-a70d449b69b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29ad3d6cf3341dc776d8efdee1612b02185f1e9c62c2ad7a8eed2b8bcdde7e2f
Date: Tue, 12 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657626412
