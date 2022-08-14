Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D723A3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660455052;
	h=To:Subject:From:Message-Id:Date;
	bh=mYNW7CsPuqEIQ4DqT9sRzF1PwYJSlLQqrQ13o0zSGQQ=;
	b=iCiMIYqvBR6S7renuTTAyO7CbxWXzItlqSxyrU3KT7Y9G0eU+y/hdjdi14jZGWIS
	rQ54KQkoWLHuIcpxEynvZ3BdGer0bCTj/O6N9Bu9d0OtQaVLYKmP28mqiPGwaFrOYjD
	ZvNLdGErtGDb4zXVjBqxQnHFcSt2L3Oo9r/+25Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660455052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mYNW7CsPuqEIQ4DqT9sRzF1PwYJSlLQqrQ13o0zSGQQ=;
	b=j5nIJMaVE7Lii1gd+kpOZrkD7ympKufpec98OOBWnwHm73xeBvcbLPa2gEHnTX5C
	Ks2wLjS/v/dA8GAh/AEeyCI1ZopBD8DYnuNLx2vL9k6Qm/wRfu1hFcnj0zh8sZGFx2x
	6gyS/RFEjwanpQLVL19h61niMjtBcE7hr6LLcvx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ad56501-261ace3d-b371-4f48-bf87-be10662a377a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b77aada56ab8cfd6ca86b9b0bc3efe84daed5dd28ca7e010cdd8a5b29faa4dd
Date: Sun, 14 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660455052
