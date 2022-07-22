Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66515BA
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658507812;
	h=To:Subject:From:Message-Id:Date;
	bh=J8kf3W4NX0HUtrpOfspgHo8IkD5k3eZlUp/S4oFSG1c=;
	b=PTtPOrl0YYDA5Wn/8sefSwjESPkK07okH2WQEnq+rNs3TiMO+EcXSjZJz8H4Ryvg
	kdrWw+GS0hb5StM4JX/nxif5CyLDrbzxi69o69lcYJsszwA9RmjfqrcIzHqgnT4OpWe
	cb0AoTCd9+arju7v4p5xnxWFQ6N4/4J7tguLh248=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658507812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8kf3W4NX0HUtrpOfspgHo8IkD5k3eZlUp/S4oFSG1c=;
	b=UDa8v/FchSGd/1OINpD3m8MfyblG+ZnrdOv77CevbDRaK9vE0yx/9hU4Hx4pLg9A
	3IVHCCYcSZyD0h5PShsq77iknHLFr3fLLVUBzaDQeee080mDmwy5vzXg0J/SONok1mi
	oJUyIrYojfn3zyCSW29PRnv2EcO7tRU5qIphmMoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226c4de0f-6af18a14-8dd8-4644-b585-5181958476ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad513492dd7963bb0c4883d7001887d975ebe54509f0e56bbd536a86219d4b1d
Date: Fri, 22 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658507812
