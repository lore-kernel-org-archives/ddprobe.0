Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0522F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647857485;
	h=To:Subject:From:Message-Id:Date;
	bh=9K+nKlKpiz5FFa2PmZsj73QBl5qS7mCfV5LlHSfBzVA=;
	b=C5nDmBPo3htAx1upvw0iEIDkFEXF1b0Z7uWvNfBEF//tkxYuRZjOvAS0TP24+/k5
	ukAwttB3JUOrpI4nleqMnMtABqY/HVX0zloMAdUczUUV2PfkrnedxlQBa1bZu/Dm4VE
	zTBPXR5oG5oXRju4An2xkCGOexyngXkEliDzf0Wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647857485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9K+nKlKpiz5FFa2PmZsj73QBl5qS7mCfV5LlHSfBzVA=;
	b=iLBPM8BxIOY9XmJ9mpDSoC0UQflGcS6LUQJKpp5zBCZ9hUC73UJt6SxxD+3pNygY
	0J2rFjsSO4g3HOf2+C3yF2q1Nl4jdR/VplxWJugDw2x0YYgx0p2SJrx6bKPiAGlHaCP
	k8xsOpVmYsgXHCBD1tW60WIPHM36Vm8OIwhrQSXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabf5c3c3-16dc4c42-7713-48a1-978d-333b52ceea76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a688fcc2a17275d8a98607d313d46f8034fa2fe4ba819d880c8a4cb73b3fb87
Date: Mon, 21 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647857484
