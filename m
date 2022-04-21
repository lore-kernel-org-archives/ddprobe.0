Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE6B1FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 17:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650563038;
	h=To:Subject:From:Message-Id:Date;
	bh=euoX0GUoWTNHNwLupPlDonV5rPNv9ne5O7pyXVolhGM=;
	b=eHUPZhqZJ2VZp4KvgcqPjBAo2SrzPAJ43U+y2/nwgPqpm2ljarRjgMtFEC1GBqJO
	a//9Wv+59zw6xJ0ieQZaS6jFglEEBWrGJhrHgoko4z0H7Qu2N0C8yPaCmdbu+yKm2E2
	qs14kjC1eq7NriDpf7bniyDVe+sgTo3uFcxN2JcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650563038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=euoX0GUoWTNHNwLupPlDonV5rPNv9ne5O7pyXVolhGM=;
	b=j8htWgEyNdsnOfJ8N8BRPGWCPqfREAjkcjZuGZYWgX00++5T0sJ2sF2LZt6jL4lz
	wwOtDxZ321Rnjaxc41zv46Olq2ybVIeBsj7fRp2qx7DN2Dd9v1GwlvPE8Hu+QmuNjSn
	378N+0Tf3Oj6vNL8WcYq9cCE6nvpf8ILLVQphU9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d393c17-62860350-32d7-4ef2-8ac9-a2c6ba3d2fc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4fa05ff4f5378f223a9d179030e86f6c6cc9dede45dfed50a9193001da59a49
Date: Thu, 21 Apr 2022 17:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650563038
