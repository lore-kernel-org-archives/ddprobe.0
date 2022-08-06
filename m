Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1981869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659793852;
	h=To:Subject:From:Message-Id:Date;
	bh=qIvJKcXxt6y9fyb9H7us93+TKd5WfX8D6HI2pWaSEDg=;
	b=BGnx2/m0fDJ02JbMCZ6+5Fr/8I+JhltV/ye2zLAnNWx7TxnBmkAJHoBctxnj6+si
	GJK9jxLpZDsI1oUL1wJeDRx2neNFuH0Fl7uwGCkWFv5K0U8dJRTONA9oo33ONBGIZo8
	4wmsD/CkVTm6u3MCb9mX309FOpRk3WrzWLtMtwPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659793852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qIvJKcXxt6y9fyb9H7us93+TKd5WfX8D6HI2pWaSEDg=;
	b=HEbh3r9iQpYST48aahOLZrqZaY7leFCbVS/ZAAUrPm8J1Wdbl+KajL3UwmMliay5
	fZoTsMbwXjN8JYlMGB4SP1yZFJndhxyFUEM5vBVIczvO2EA2Dl9bCzbzEThKs7oWvyo
	5cIMa2q7HW+oq6EDJRYq9qqN9azlZkvXVMRtkCqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182736c48c9-22a1792f-7758-4a81-b047-dce935db23bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce1a866eea5dc459886db765c8ac4004714e99587322273a5d011f24a4941fa5
Date: Sat, 6 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659793852
