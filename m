Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CB01851
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660703452;
	h=To:Subject:From:Message-Id:Date;
	bh=O58y/OlHCknQ6GetIRYomRLOjc7xZYXU/5hGhrn+wVc=;
	b=RTZfvp1ETY+UmVvQEGigZvSEcVI0v53DNUx0dahefI4lL+8Yo/vSTfjCbGLatRny
	KzmNTO+53QnNi9IhfiuNLi4BdlZsrZbL//ko5iNXZ5gRkRCtzyEa5uR0QlCVS0f3ptZ
	Tk/1WuBJKWitgVBdWHNn+fFI8E1VCjEi+VEFga/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660703452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O58y/OlHCknQ6GetIRYomRLOjc7xZYXU/5hGhrn+wVc=;
	b=XAt9YAWZ9Q/YnFoslpLBb06TElE/3NNfEsb16JY/HtBTf5VmQoAspqZ58fXHx4Vp
	D1FmEZtfhfmmXISE3QVnwtARoK89DWVPwdxA/YFfTvx4Gy+Xeg+LWO5ojjhLV2NISU2
	PC/fllAmu9xX6z+8bW1TL3f7sssojMgHyIrUFrko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9a3ad85-4964875d-4073-4cbb-b42c-31e0a835dd0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ccf4b3b4f1891bee61228d2b9ec44b0f962cb5cee2dce80752a108656a4d811
Date: Wed, 17 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660703452
