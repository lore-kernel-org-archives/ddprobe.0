Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C3E5EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647819384;
	h=To:Subject:From:Message-Id:Date;
	bh=UQDPqGrwMwN+apw4Zn7soc6zPHW7O6qD5MpjWmhKnRU=;
	b=j00hkrdlZ+K3FXeMfJYcSA4OvWmL7D2vQm8fK3T0N6+G5yPjTxFDHKeewczFGYFa
	gu24mBM44KuOpZvsAQ5E+xL7iNK80N/5r0cg1YrctallFse+o4zQaZyO/M2K2lD66OF
	SlbmyOgOl8Q+oPm3Tz+2salY+9LkUsFEkhP9t/yQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647819384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQDPqGrwMwN+apw4Zn7soc6zPHW7O6qD5MpjWmhKnRU=;
	b=d8iO+sXrtjgWt36VqvEurdTxwfbcWPKtQphQ0p5x8n6K97j9iA7M1Sw6lqNxA4zm
	7JsNBNF/lqnZ6kgdHVyk6R4rS2rAEtl4dxMnHzZYi8jHsqkRRq1VtkvI7Ub0nBoamqR
	N+yWl75/8FlXG9+zeRMYNwQP6Dee+2jHqnKBAFeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9b067b2-a3d0b36d-ba07-447e-b6fb-243d5b28f446-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deff055ea115a475889933b1233d4cd2b27dfeb0bbfe5cdb6d1c710751c22445
Date: Sun, 20 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647819384
