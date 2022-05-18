Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D3233DD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 23:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652917259;
	h=To:Subject:From:Message-Id:Date;
	bh=lxP3dpU6l3GutbsKZO70rPIHlCEQK8Lz7A1TcHuIKRY=;
	b=ZNFx6vCqW81P88bNxV1fMtFkPw+if2zyIrV0MQIV7xiOeOEcwolMVTsq2QYSfjV/
	rqaEmyo8V/QFEJutaj4SrHQnMEyf70FfyAYkHkmbRYEHD85bhcHxiijmnc1za/3gq6/
	SO7jOka27w+mthtqwHMvOcJzrFzYE521rOHVTaWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652917259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lxP3dpU6l3GutbsKZO70rPIHlCEQK8Lz7A1TcHuIKRY=;
	b=eytqvHP+ikiPJDJmSikT9+fXsovtxRDw8peWfbDFul7OXcTp44L77eBOUX2LtuUj
	87giOIXuTGBf8gKPDdb+NiiwzZi/DV8fXJ0oEQPv5PxMtft/tRTn2/PZw2B8iqV0wtX
	pdq/MP3Onq6aCz65MkRtrADYFY5b0a/uXW3OtXn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d98bcc31-b91ce2ac-78c7-4c8c-9f41-da37240f2e81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3c8a23c4da13fd28873a21fce3e591441e044e6cef7286bc9cbc264a93e4165
Date: Wed, 18 May 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652917259
