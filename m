Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86107E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646449884;
	h=To:Subject:From:Message-Id:Date;
	bh=FMHRPzxjhGSNfdwqKH19Y0HcoPelJ4DbF/0QftP1Le4=;
	b=fHQneNIqJCATGEEGBbxiTdIN5a8mPJOHQY1KRnxvFqqV3+Rvwm5jQupaG6UIrrtq
	cqTfJpdNRkOWmbLVceJcPOPzshIONNT8ZeOnmY+l13ebc5mFD16/xeDdMkXgBQZf8R6
	4VI1S8q96pnzowPoPw6eSE0xpu4anrEz0tzOfM2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646449884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FMHRPzxjhGSNfdwqKH19Y0HcoPelJ4DbF/0QftP1Le4=;
	b=E717YQohnFrDfSIsGMIEBWJZx6CnVam87ykX74/1BSs7GuHpKaUxK0DO4L70JJdt
	R7xbWrpqKPvSguB6mobrbqS/ZmWGhD460cRbh/489Xi6fRsZhrC3AsumYXYy9Nf63Kp
	MCAwXcw3+AeDeqnvuFQ19bCTJeUSq5/G5hAczxlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f580f7e1d-4b1c8cad-7e4e-4bb3-8c87-860b96327f1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9503163a1bef58d06919befb7bf37c4a0ce238f18c4086fb8b5cf533deef12c
Date: Sat, 5 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646449884
