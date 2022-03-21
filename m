Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C5E4289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647870385;
	h=To:Subject:From:Message-Id:Date;
	bh=WuPQEDNWblerHDfbxQoamsbva6KBCnONSV+EADrxVNc=;
	b=QOTm/ke1AMT5uZCFIIfY0GnJAYYKOcj5Rk1dqAck6IpFGIkOoIsA2jff0kgnJV/F
	6iWJKxGC9cQNV7UNcSOIdq5X44MN3cvIkTsvnBxfm+DAbuMimO3k3yxLWRxol74wXX0
	Q9SOuQCmoo/DsTbAD+wKYktsWFiXNPsS678OGaZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647870385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WuPQEDNWblerHDfbxQoamsbva6KBCnONSV+EADrxVNc=;
	b=XxSnccTP+Gw5Sl9u8LTNzQC4n8W090Xpr20DsfRVNtnsIwMQZc4qBreYwOIT8oS1
	ECr2+y2UFlfMcc6O3odmCwAFtHVL+MTEGa8mN7ITogcMw1N3gK3ByOzJbNMwLyEnpra
	w21/XmRC+VsvKJuC4Kzb3kuBS+a/tao+idvMoB6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facba9ab3-5409d866-7165-4573-9658-dbf254be7775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaaa4efca2793417ad365338e53dac1088c75324e61756afe765befef4e18262
Date: Mon, 21 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647870384
