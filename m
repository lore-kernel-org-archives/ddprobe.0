Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7CF33E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656344812;
	h=To:Subject:From:Message-Id:Date;
	bh=ACQTBODzB1Mt+NCRe0Xi3M6Mr/rPbvC8N1ESal0QdRE=;
	b=EzUIUxWCYhKZ+NiJh0kQXxx9Ur+Vl6Md/GKn4/lVEX9kiWs+a4uhVy3zERnMuMOz
	sb/45+ZtG54z9HFszhH9hGUZhLTWWSUNL7NWNOkL6E8SYG+dG5Dv7ZToAsQiqe0ti4K
	vy9fVZobnzc8HAuVJg90pjwj8vYvK6hug+J/ejbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656344812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACQTBODzB1Mt+NCRe0Xi3M6Mr/rPbvC8N1ESal0QdRE=;
	b=JUZK/GivNxEvRqTX5CVOfZbesZ/wm6KmeVtR/tKMJ0AHrE30SSaTYw7h4faanrv3
	wGX8ichKGxUMT2nuYfhIBr3mk+ASE3fm+vbS5su3n6acafvm6fyzPrB1TTMLbA3j/av
	dTzVg1BDOziA/RvdYbu5E6lJKMDF78Iikp1EOzwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5d81aff-76a05351-aa06-4e52-afc7-964eb90c8885-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8286fea841ad657e01bac263af38635a96b9cf1d7f61cbdd0dca1a0cb5d0f1a1
Date: Mon, 27 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656344812
