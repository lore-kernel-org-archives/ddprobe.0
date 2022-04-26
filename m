Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F636363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 03:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650944758;
	h=To:Subject:From:Message-Id:Date;
	bh=i58Bu6XKDSZQq6epOyT3GEm1YZjxrNGosdX7Nk/IusU=;
	b=NImLhZJzZU4w9mteF7h5uENBTLoAcqWqzUrVFnwsiLraY5evhtIa6qOjGKRHxaep
	jrWB1463DseXcN2djRJ6r9mqRIQVOxrJ5KDtMmQ3xD1kgJWsW2+711dr9YsqXB7nDr9
	r4xJSuhp5p20Nh6aG1KVly5ZMpyHUZ70lKT3cIAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650944758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i58Bu6XKDSZQq6epOyT3GEm1YZjxrNGosdX7Nk/IusU=;
	b=OXgCbNBBtHim62hS+kdvI8s1myLGB7E/3ZodyEv8xcI/sdBjkZUPgseK6eJdo6b5
	j8F8fgqRdbGWAOAPMwFTn2ymVJBzdl2xKR6fjZYf5zrBEEtJIEf3tBUv/C3KUrzyxT1
	0YHhPG3rYijvZ10c4xN/wnMCxZoMAtLe3qX6Xtuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063f9d228-f87338f0-4553-4eb2-8f9f-24610116e7cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cef8b220a97ed23eb9b720b2fd397c2d78fa0d0007c015bc5b664dc9edf32c51
Date: Tue, 26 Apr 2022 03:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650944758
