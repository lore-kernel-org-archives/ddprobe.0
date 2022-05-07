Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C79281C
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 09:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651914778;
	h=To:Subject:From:Message-Id:Date;
	bh=uUpVriHFg/9nlob+8W/q8D82aSiWDNwrLYElenO30Kk=;
	b=GpCOApIabygCqtrLsHxZZTNvjFjK7J3sjIW2Tsv8Q2+nr0CVq05k6RASXpiGoXrX
	A0/VQsBey0GU0Khmp3e0mlTxeqrfGqNOnksfeHhWStYD1NBENqARMSZlTankEzE03W9
	oDcsngtox8yMbPt++etJh5O/d6KaOcR7pawrVOwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651914778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUpVriHFg/9nlob+8W/q8D82aSiWDNwrLYElenO30Kk=;
	b=AbHHSVpwyMZFpNvcFjU5S2zZ07DUpsvQ8L9J8CiJrVWUtuEWxahtLhNx4+XSSnmF
	5KLqky0j0RdSRPIdG8Rb0HmsJk3nD/v75rOsKzfwsVU1Tn2/ttj55v8vIMx7O+eA1SQ
	SopHlUId5nZTmFMsRE3g5pNIm3egoLG5jNJgLBLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809dcb2699-4f2ed4e0-f9f8-453a-b220-0de74ac2c364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 255d4d9dd59c450a794658bf2ede65146e6db5992ec3b3a81e9576b3a2d33c50
Date: Sat, 7 May 2022 09:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651914778
