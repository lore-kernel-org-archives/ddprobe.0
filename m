Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5CE7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 10:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650796678;
	h=To:Subject:From:Message-Id:Date;
	bh=6m+JxDD3nkkafwZvKBE9GkpuptyJ0uXwqRLWCmTHBDw=;
	b=aojQSNVtKhbZ15+ADepCo2EJdlLQ7NdmwwuTJkFjx41sKpidhGrh8D8ANpCkmqtG
	sGnktuILnzoIXbSCZWoDYuPfagJaVUOZhgZjpyemSqowzi9HMtDyhxHYNu/p6BpDPYm
	t8qTcaB3Wq7GfqA6QtC2QlwvcmljqR3vIM0CvAEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650796678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6m+JxDD3nkkafwZvKBE9GkpuptyJ0uXwqRLWCmTHBDw=;
	b=MVTaUFY2hiSJvl/T3uMm+DLDCeKJbtweCJ2yL8kncCxcPMBjFnqcwot+KX/79yC5
	0CB5FSc+XiqJVuf/Zjn0HqproyOhWObEfa9t1aUGr+9WD65bqBiW7OjR6Up+xBeZoNU
	psoIsOK7xk1Ck8Ee2VLfY+fV7S8FE8X9sUU7xpdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b264d56-d8e92f28-9957-43e4-82a6-5cdfc93afba0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aefedb330682c6a61a3969ad686c001ba452465f96e18755d8b71ea52a5e8257
Date: Sun, 24 Apr 2022 10:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650796678
