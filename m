Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6CD10EA
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 01:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649641498;
	h=To:Subject:From:Message-Id:Date;
	bh=nxqsl+la0orSbcDf6yUxhsU8GKMi8lau5LUaBkIn3TY=;
	b=hVlkEX2i/TxWR2pNmSnEh98YxSTsfxSX/JBCb29jbrGw7vY9CZECP2fexNXZjxyo
	/He1IKWv4CRDW3c0FPawlBEGHuLva6siaNuk+UFm8BzmYXMgZl1jSiQ2L6bo9e6Yzcu
	hoS69IMh88u7yZqbGQ77kluBpcWL479ppUrJG1TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649641498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nxqsl+la0orSbcDf6yUxhsU8GKMi8lau5LUaBkIn3TY=;
	b=KqNw664fV2VfXuZpyqNPHa5XuX20TkLzQd4GZD55luOAmeRPqeQ7aPQEPUUftOY5
	QQR9bsUHDvAvyi8lCSrXd2VEOfNtSatoJSFFO1Pcg9/Z0siN86YRsQt+XXkxL55FF6o
	zAQq7Gfqxgt2sKpfjAcH6Wg1OsqqbP/hwmzfW+oU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180164ba6d0-260ddca9-8674-44be-b57d-6ecdbee84c6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 524536d9f7c40b7264fdc2588ac3bf1ff4e30f19eeddc41ad56fdd2bf64d8da7
Date: Mon, 11 Apr 2022 01:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649641498
