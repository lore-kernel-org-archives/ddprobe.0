Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5AD1391
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660486852;
	h=To:Subject:From:Message-Id:Date;
	bh=RHFeTMbGneQBkuEshunkvJ2VXn5Khp54/owsgQ8fYd0=;
	b=ERVySEnXtmWpkglP1VGirAMzI4H5IMRNCCwLFB3KYFaRbEPAUcSrS0pt49oEFzLt
	SB2HfZhbUCE9+lDEsFBEFrbl/zBsA5JO2X8IveRM485RxJIFjNG6mp8BeMf81H6jSnQ
	1xeRtLzBnbmN7T5bjlfOt0u3z8rJI3zA2EmNFJxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660486852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RHFeTMbGneQBkuEshunkvJ2VXn5Khp54/owsgQ8fYd0=;
	b=O7u4HhuhEtOl2KwkVHqsdxXB6PRC/wXjy7NhJK1/FilTKEFavKhv3kZDfemeXTBv
	HGoiwd7Dgsv2Vqueq8h9nDosLh7juUdnjOzsoCDV6T06MF+TXKKq31RDRLTxLwAdZpB
	siZEPoTFQp4MLE/XsGso7VhvINY6dNZwddhWkiF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cba9fe5-8e8df6a9-fe02-4c66-89d7-90b91fbfa68b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bad7dca1804d29623a10099be2615fc780ef684b8bc56fe3b3bf3fea0a75ba3e
Date: Sun, 14 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660486852
