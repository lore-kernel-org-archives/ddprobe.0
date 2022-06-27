Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1B520E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656302812;
	h=To:Subject:From:Message-Id:Date;
	bh=V7VoJ+dnJMrYD+wzD+y/iVUvxwyNKHJFKeSGycHB344=;
	b=BzO2tBYd4cRkZdPun1/vDGazxBP74fyl/Fqg7tOQpQ0lRx5eGzT+aKvX/hcvP0HW
	pNXDjAOFOodTlUGxc36SKdBT04UI3UCWRGAGYHtwASmrs5Z7/hoJ0UboGAW3AvavmE7
	qJSy6vooKl1kdNmfT+75gf/hgZY+PeoUK0+q/v/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656302812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V7VoJ+dnJMrYD+wzD+y/iVUvxwyNKHJFKeSGycHB344=;
	b=VQP1Q//OKDYRPAex+yYAV7ular3uSvF4qldkar+wxisBmjiCFv/6AYmVVisN9pnf
	xGBfDPaSoJ59DWNs9E72QdbSbTx68n4lIPdJW6F6nCBZtG/E7Jkd4GpA8Fvy3TNz9ey
	ANai8niozrCdHTr7OyyXKDQP5yXGoLwqFqd9q0Bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3573c8c-6a25f44a-aad6-4f8f-bb1b-afe79daf0a28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a26b1b2af25103c6f7e9dd0dbc1b75c47f2d482be78afd8590abafd5ba16e72
Date: Mon, 27 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656302812
