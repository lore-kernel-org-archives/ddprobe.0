Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E537A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647247884;
	h=To:Subject:From:Message-Id:Date;
	bh=H8+m0W3A1ZSIJsbuBAHHMkIw+Fik9Ywp8BDPhbCGvU4=;
	b=lEq7dCv2sxqrfilFhWjUqw+xjuuhkQ+2zMJBV9iDP3DGiaXm/W3JuwxNjodxt3Kd
	R11kd8B4I/G8d1F4Gv6hvhagjRvis3nLO9Vy6anBVkmqoVBcONVJZErBZ/RH736JAwf
	bdc7cgmGlajeVpi6S41q+oV0rr/OHbFexipdqNVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647247884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H8+m0W3A1ZSIJsbuBAHHMkIw+Fik9Ywp8BDPhbCGvU4=;
	b=KrETFuDCXY1RQyI6/4Ib/FhLV5iKCMPtB1YRHav4mp/01R7TNvDIazlzlsEDpcyJ
	LPYjzx65SWJ4GLqFHe++f2ThPliXO2lt0uMzdtY4gFfBsksEsxaR+nYEVmWXsvDxIP3
	d+1lj9z/4WyIBd1G2yGveG2lwqlsD6kZeSKu1uPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87a00197-e6bc4119-0bd9-4e07-aff6-7e58b1dd6187-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c1c1ee2a75fbcf0a2e1cb74d7b22be52b45e39c46698221d4b12ef9d088419a
Date: Mon, 14 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647247884
