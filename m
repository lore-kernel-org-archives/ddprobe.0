Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8042A3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647510685;
	h=To:Subject:From:Message-Id:Date;
	bh=PN2peHMwJOVap2pNf8wERmn6aR6y43haLNVep+IZuHI=;
	b=ck3R6jTFIHiwAqKwdYxowgioKzKVW8YuhTETp00gB6VpcAGULrtWeBD++7+8UhsA
	LF+bq9hFnFOCB2lFtEpmok3+KyXPbheRL554EiAcKyBbaXYZnH/+BNNLVJqjv2XL9b2
	jNgWEfsbH/OIR5zb3Xa9yFhc0YRJHtYmNKbkgna8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647510684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PN2peHMwJOVap2pNf8wERmn6aR6y43haLNVep+IZuHI=;
	b=gTjuFGAQi7e23MeG8jpGoMVPl6YJ3qQ6gTQwTz98U1pYb21LDhDznoENHAMnjKpt
	iwMFR741r8R8YyszaMGnX5aNZfIXCuG3CyaNM7lJQvlLLkQU2aRIqnrAyBskggIjgyE
	zFr6kg072kbDLFdKixzXURoVaCMcNjdQzhePIoP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f974a048e-2cdbd5f7-8f63-4f31-b911-97c0754f5d44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 633f8122144d4731004605e9937ea6d9db14200f40272e1257b442fc71582cbf
Date: Thu, 17 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647510684
