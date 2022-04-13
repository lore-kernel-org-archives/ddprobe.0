Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCA223BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 04:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649822938;
	h=To:Subject:From:Message-Id:Date;
	bh=g/Tsdvy3grlFARrGDR9k3E1v3DAljPPrYzrLbl9cSQY=;
	b=lKuCy5IJ9MliMnovp2bK+nirg9T39lsw3HT3BUcrN74SyRwOIgypJkgylvmufz41
	VUyEr/M6D3GPjPaYH8OvJvlqQTr+uxdX9cUOCfyc/ROmMpmAFWYFi7tq9BqdXby7gTE
	BGPLmSnOn6FWdNrwkTEnBiadZppIV3Ctgt0vvOss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649822938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g/Tsdvy3grlFARrGDR9k3E1v3DAljPPrYzrLbl9cSQY=;
	b=AXhuyM7fZjIgmtbk8f7mVLgrWF1C7eE8nzjKyAx/eVvTPdVF1IpPwJT1X0R+/ChD
	WDi6t9yd8FlCnH7A5WjpCFJG5MTvsOLO8+pHrpHyaQ47OwGkEcvuVqPwH4I5ImAlY8m
	HY+rpmC9i6Nu8aU+AEPZKMUPv6n/i2GWt4Tr974w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180211c3490-65aa7d7a-3a41-4d74-a48c-5b2a339808f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b31ab772f51acbe31f564dca951fd0e7ea4d099765817013fb9a24c6215cc353
Date: Wed, 13 Apr 2022 04:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649822938
