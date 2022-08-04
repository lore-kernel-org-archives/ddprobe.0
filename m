Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4AA23A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659615652;
	h=To:Subject:From:Message-Id:Date;
	bh=Ws3VPnXsQoWRTCe7/CU6WbV2Vyvo5z4ULd0VtbHtNoU=;
	b=hD8qU6wXRJCXzLgEBBpcPhgPnYt4feuYRmYJVSF9TGo2fvw6p0zscy3DlGl3YvFU
	/65P7q25MaTyWLJZWVn9wLSaatI4QYr0Z2kH0F+fi+M92nQ72o41mlSZ4s+tSsgdyWY
	S0Sal5QRxOHS5s71xC1MYglWQR187g0wXm/XIzwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659615652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ws3VPnXsQoWRTCe7/CU6WbV2Vyvo5z4ULd0VtbHtNoU=;
	b=jnlMPGxGW4gniNdrG51g2GN6fYMoIMMHQefsEy9W7muPhADbVrvoDh3DDitBdEWl
	wpBJmf9/Y/ADo59qu6U3AOGeNmuQU+6kgJFf9WwDT+NjEFYRdymcolxFBt1AXgvZNzY
	5k9rwqYMsnxOV5ikkd5J+tIrKMknhsH32MUExlNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268cd2b02-305904e6-bee3-4e81-b5fb-2c36aa2a1ce2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88f1735c0f84782b659d89790a8bc16d68025f839cd3da3d5b1b9cd45d573759
Date: Thu, 4 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659615652
