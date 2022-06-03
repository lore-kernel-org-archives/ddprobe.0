Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3971DEA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 10:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654252139;
	h=To:Subject:From:Message-Id:Date;
	bh=iy1rtetXL6eNpGlvGd4I+mA+pniVykCOIJWNt6MhUXI=;
	b=cSqr9s6VuofEOm2Mjp+Blu4VbO8qL6u0sTObIT1JPFDtqmq2G7ZNgTUgyAEZMThs
	MWdduOK0rtWaRGrxU60SZfmSWFuocXxBrQWLYidBmZNxwaXp3BHM6xDcls5gGKNqmen
	WX5UCn8P9RT9Zljrh5ET9mNQsXPhFaL5r2LAlPuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654252139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iy1rtetXL6eNpGlvGd4I+mA+pniVykCOIJWNt6MhUXI=;
	b=M0SrxiPhYN/er/CqFpFmevHfsFrcvrWweZT/JlmEwj+R9VfvIwPgl1vtbCaHd+BH
	vwey2Wf/Cdt+FZAD7p32h5QrrpgKP7f2TkJxyNMo0WIeqCHQgQm2OiVMUfQvyIKuydt
	xyxnvcVJ4WYwCL102okkFC6QRlBQCw9YL20OInOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181291c72ee-cca9b429-f405-448d-8893-f4c2bcd8b489-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5d2d62fd9e2f17e8998b1fbc01e36f1a48ff10755b88d7a2b56292773e99db
Date: Fri, 3 Jun 2022 10:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654252139
