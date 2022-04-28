Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60403136A
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 20:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651177798;
	h=To:Subject:From:Message-Id:Date;
	bh=ZneIqQkdOYxOeV3Z36TXUXVohlIobcwRzZIzE8Ox6ZU=;
	b=Rge27i4LhDmwXyw6hcyawBHZFHB8e7RoO2FoUrHKxtzCH9y9ktpsU49VzoaWh6jM
	X4iu1i0gcMG+w7yCQ7px1Vb/qG9VMzHsQKvnmFRr4qiRN2aTFIaWZHrNFa4k0PfVCP0
	Kqi1MNIF5nEYxkRQJ904WLisiWAyrwoivf4jvino=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651177798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZneIqQkdOYxOeV3Z36TXUXVohlIobcwRzZIzE8Ox6ZU=;
	b=Sz+dlVJ9DS0gUS5Tr+2KktXp7qjXDM+eWSnhDMm2VAjnrSJ+MFQ2CzBEedXDVFfE
	c9IQwnHMLVa6FL29czJ0URy4kqaH2+hh4awzThW9NvCL1/omKWVnMSd0DYEs082mKAi
	8NPaHS1EGhdRratsIbXHP9nr1rtRq5cGR+UuZMs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071ddbb21-b3ae7827-fa7b-4eda-b307-5251d78f0b30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37f9b71c9dcdd297d1e4aef08a77eb7b0ea52ec180e707ada00a41d33a1071e4
Date: Thu, 28 Apr 2022 20:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651177798
