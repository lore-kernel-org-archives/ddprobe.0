Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A0A1FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647406584;
	h=To:Subject:From:Message-Id:Date;
	bh=Zf1EcA/uKXM2MMluRG5TUtP4F96m/qBewhTv2uVH/vg=;
	b=UoXO7kePeNUfcZd74GJW2bDARrJJxKNnpqxJGAbENH2SA3EJKnKM4b6JR7cxFtIQ
	/QMgDbLcm11ccKNAGlVPSrHFv/hoWU5hxMLo7A4jQWtHv+pfvhM8LL+oXo00YOdVxbY
	H8g0cPYbepOmrcCeeIn1nTfezsznjDebyssyHnG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647406584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zf1EcA/uKXM2MMluRG5TUtP4F96m/qBewhTv2uVH/vg=;
	b=ARTVtSfIIWuhSeXbNILpcinUFrsHHzi1T03sehYi4skXuIX30miIyqo43dqpLia5
	1CL6Qvl4+j/S9dCGKXRywY0kXFQxxPnZ+Feuv+wmA0AWikoIzoEsqHfvdtH3nlaiEs+
	tjJzu/8w4e5jthCcsRN+UqjPtSPA5dCPVIAoUMYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f911593b9-f72e52e2-ee4c-4e31-86d5-a9ab908e9f7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2324747b02fe73af858e0846bf696a11a4b45e3a90edb60db1295a239083f5c8
Date: Wed, 16 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647406584
