Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153891FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 18:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655232959;
	h=To:Subject:From:Message-Id:Date;
	bh=+V+onD1iEctYJJfwi/Pa/40B7xk2C6C+PWW+6Yv3Sbk=;
	b=RDWGkFM4lOcgh6QXRPoOG5yGiiM1yKAOghRmvJMOnHENiXxYFX3CAJb4yp4KfLgS
	Hkgl9EvREIYf5WUZFjNA5xAkPpeZda4hqC3Er3w/bOQ16yRGxA4ZoUCMWu6mWHXqBYY
	+D4vqOWJ+r7n4fMP7W8++pfdOcDzPz6Ad/T0lj9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655232959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+V+onD1iEctYJJfwi/Pa/40B7xk2C6C+PWW+6Yv3Sbk=;
	b=QDCKvsoFzLaQNmOBmd266lz76P6y5iSmprbSYI9HGZUjdfFtF57Y0oIdk3PT9of4
	1i1RkAixDuZLYN452GD0vd4aAuJ4nMSqehQXf1xOWtg6P93ATuyFKBDy4622CbHV0zQ
	iHHkoFY9ALJXX8TsnWUYvTbxPS392m5km7+VB084=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181639292fb-4af54382-739d-403a-980a-74c355294a72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a21f19adada6ff50fb44c636f5f4ca8a1cf058e262e32aa3ff1c45858d64831
Date: Tue, 14 Jun 2022 18:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655232959
