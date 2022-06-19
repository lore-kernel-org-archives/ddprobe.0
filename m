Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271157B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 06:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655620499;
	h=To:Subject:From:Message-Id:Date;
	bh=NrU8ak0VenSKWZR8KNxOrjN6pZPUbGTcOne3Z3VpZ1A=;
	b=lOTGHHfU5VtmSFi6DTgSW51GvNDLMuEJDZ9MTgagX237wNhDu4pKJmnqkqjjCcpz
	twPgMbngS8GxefUeIZlFTOIogXWzgrNvoi6QqFrB+mLNvgGZsVB/Jo1RgsCMEw9yRw4
	ZFW2d1OaNDZIM0t7RDsYEtvp1kpIJPneK0vwJ2U8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655620499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NrU8ak0VenSKWZR8KNxOrjN6pZPUbGTcOne3Z3VpZ1A=;
	b=hoDkz92ro5OAY5OOfdH8vR2bN7S3I3dZ2NqKO2iYtDlOVqn/iLHbjOVeEn5MoiGX
	gyuYm+FXkhmR+7YdwuzyjYaR0/RwuQJkWcd/r7lLP10lPtwSW5eIY7A4JFDqArvxOD7
	Oqw0BaTDkaBFQ/RNIFFZqukA839Y8feBxD16OA/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817aabf74d-7eb4f1df-6935-4fae-8cce-8fbb66c0fa13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14476e795b27b4c8f14c21bd1aea2e893de6d0cfe2f4651dc103117538ae1709
Date: Sun, 19 Jun 2022 06:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655620499
