Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1857F7A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647840685;
	h=To:Subject:From:Message-Id:Date;
	bh=6jZydBNo9dYNmsqpab22MZz+UoOXdvqXer75x9Qcvf4=;
	b=K0idavlayOuliFTvtkKCfcd0D8cYZcvXl+Z+DGLFI3k9hsGYYvwrO5Cv1OuF6D6o
	fkhs5XyK1FKPoafNhhtdtL2r+P7sr/lAEw4CO6aySoaz1QBZ/rGG0NHfwSE65rIOdIE
	VulkG6PBA7hSaWlx6RTXz7VzjtNegmpzam/If+UU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647840685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jZydBNo9dYNmsqpab22MZz+UoOXdvqXer75x9Qcvf4=;
	b=QGx0e+yTK4S9mCMoJX9TNaiWYlsvVm7tcyrPlJ+nvFMIuxuWiemj3/4zRh6tEne/
	nFx07JHzxf32vIWoRSFf7Sk+IabS8U5scvi5fZ8wyhMeRBDg0KFI0dlgplCioh9xxA2
	UkghuhxwKOvycN4vvgOE+rHAl3tele5fzsIUakcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faaf56aee-b7975389-6753-4407-9dec-997e8bfa5934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ac9a45a95a7d2184b3c20824c74beb9ec627ad69da13250773934474a6f6e1f
Date: Mon, 21 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647840684
