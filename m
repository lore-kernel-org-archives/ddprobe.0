Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828A14378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647532584;
	h=To:Subject:From:Message-Id:Date;
	bh=+5KfYY/IJUyrMV7wGsdvDykmSkvGACfs+gdTua+2ph0=;
	b=j+QdEn2j3In3xIcYPbvpKMb5DLX61PFyPfAyHc79QepfJFpl82Ygz85iNMtZTJ54
	FZteZy1bKuXTznl4ga4YNR25N44D2dYEOdZIWlms7Q/ol6fOJ/Gx+XYcL4v5j7iXUiI
	32yMm9RyAVmZCVKg4wEnrgUAs2YIPwUDXLjGoHbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647532584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5KfYY/IJUyrMV7wGsdvDykmSkvGACfs+gdTua+2ph0=;
	b=CFdcYUZt/vUnhacatrapkFjw9cjTKFwH1IZP/TpNwSFVi4OGSWp5gdjw4DtL8fsL
	zKBM3H1wtG5aGNfGZPrUnGMIaK1vfDqrwVMQ85wv9de8JZUlI/k1+yQCJ/1bghpvet5
	JBV7+Z2oP10UFbUxz06FR0Qq5eLbZ5KzzqenZcq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98982f47-a954da75-e130-4379-aba5-ad3256241c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cee5d1a0ce53b1198a6f468bf4fd37cdd198059eb9187a3ff20693cd0ef127f6
Date: Thu, 17 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647532584
