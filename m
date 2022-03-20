Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E17F33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647785484;
	h=To:Subject:From:Message-Id:Date;
	bh=UQwd8rVfG8Y3y9a4rWH57MpfTKtqIiuyM2FgkSVyGhY=;
	b=YIgwCZ7fTM6CZonZNd96xy3oKGVo5QqKy3mExq7s1Z3du6KGW6Jh0UQbVRgoxNOk
	QCqJbI0paYP0wHhyEEtrtpI8aicoI1IdpfV0fRib5xE9ZkyciOgJiPy26JdSNRpfXgx
	EhUAzF2tClYcHdXOHwIVXna1KAlh7fPK++xzZzqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647785484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQwd8rVfG8Y3y9a4rWH57MpfTKtqIiuyM2FgkSVyGhY=;
	b=axpnCm/V7cKLhqow+1lSJihoDM9uMJ8xWvN1SNLB/PNWdACaD1TdRkQkN/DdEbvA
	OEFbTQ29PanLJJqrA9UYnmZFGGAYwOzWXIuwNVie01tXGnXL0i846LE3rzQ44z8+Hd9
	UU+tFQdCKd6ucbYI33f4Z//vQsGkBHrV7kOfHdNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7ab21c3-4542a8b5-1e52-4052-9f5c-55ed1ab7aecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5ba6547196095b82b419e47791c05d04791ee703b3cc91230f4a4883030af0e
Date: Sun, 20 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647785484
