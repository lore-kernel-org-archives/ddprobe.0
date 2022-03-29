Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF229A1
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 23:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648595278;
	h=To:Subject:From:Message-Id:Date;
	bh=1amVcqER4YmiY19Zy7nZIT4iJksdUSzIIp/TN12ZobM=;
	b=Hn5Wo2AMK7fuFGGNHdaM1m1bito8uFT0f2n9Tg7gqXhwqUtt3SjoDxIQ8VLi7179
	vBPvvU6JcZO9jvBnjiYWbANUI70MRq+Q3nFvRb0d6WBSm9+c1fSgVu+IG709rt1RJTt
	N1tOMIaFHF4EPCN7XQ1d5MD+++9tj+SKp3t+J0v4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648595278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1amVcqER4YmiY19Zy7nZIT4iJksdUSzIIp/TN12ZobM=;
	b=C94DnHCmzSZ1FR8629Gvoy+KDyDKpmog0NkcoTmhKco5q/HAeYSHPATSgpqf6rf7
	U1oXEQuTv63RhaD/OvgO0w/eBCoPcujK8lF+xgFqmLC727xz8W7y0vemsdoUsY4ZjW9
	w3xGpWfgJf4rJ79OJPzJLi/bE2OChWzAv+pbFoQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7ef99d6-c5cfaba1-dc33-4f1c-b7a3-f53cc96936fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bea183a2a98c80fc037d2eefb07e9fceb278b0d80ffc27834e6b8af55510a2ff
Date: Tue, 29 Mar 2022 23:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648595278
