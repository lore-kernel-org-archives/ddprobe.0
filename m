Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5934D7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660523452;
	h=To:Subject:From:Message-Id:Date;
	bh=vVWG7X/G1R2boHG2nW74c1TGQHTKKVYFOShtK4ovnyE=;
	b=kGxVSVZC7lMX+GstgMQdMO2m1T36xWqtZ5meFKbi+49s5dRf/1hzTKsnc2ynIqtI
	LPrutHB3sU3uiapwv4A4Cxpq7ILVnTEgqkirHD4leXC3lm4auxf4ke8f5Rg0JqIw8qK
	6QNPVRnD/gMHAu5eCAKXu65Y7PHRNpiqggml1bYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660523452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVWG7X/G1R2boHG2nW74c1TGQHTKKVYFOShtK4ovnyE=;
	b=PEHaf1cMBuy7cojnhx+yH/RKxylyooDnHJmhlzo5pBuFDf/xvrZI+jAbxLJKq/C5
	JegayH4n5Wb/mbWWIDPfwVCKI/pRCTdSp5fWiYQ+ToRe6ejVZjC/1HexxPL/mnnS/fo
	Y/WrJzAi08Rhw91nN3b7IoZMm75xPcGhPg4ETTdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ee918b6-f6bf1748-aeee-4919-8cb2-27f1feecce08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e4ef3e4b4080a98c9efc3aec92602af3d08fc62695585033d8ecd533209afa9
Date: Mon, 15 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660523452
