Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960A11B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647274284;
	h=To:Subject:From:Message-Id:Date;
	bh=5m4A3JeUvouOZ0ER6cteqXlvFAsOvlrWhRhUgsX8Wpc=;
	b=lWCt/jm+95Aag4IxjBGMF8O1uIXtlXUYeC3eZKBg6SNeELC9hcLmuv/sPzxg0C6w
	kEqdPfkf2ZJafSRLdB5LeeqIgdgomdW1/rDVctAqn7tLN2vhORQTnmT5dUPNnpnsLTZ
	zQZh8j9RMC06XLNlgGy82nO3llC7W/d8Vmv0b3xM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647274284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5m4A3JeUvouOZ0ER6cteqXlvFAsOvlrWhRhUgsX8Wpc=;
	b=f9/q+5QO7IATs1SymN/dOIJXjJuTCw+lPBcuREswbOHrlVxpVBff85VSBGF+dqcJ
	HFAOTiwDNw0E0VxUL6AQWX5UagUNINnrCJNuZZ6FZiVnl9m9rP/6n3svEXnnwAQ4Rgf
	KMvIKdqu4G+eV/Jn7QxUo3ktVz1p/w8RvjbWqZQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8932d6d8-4dfe1085-487f-444a-b42a-5aad07bfd3ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa083f49923d125da7c1af116b583a464478b6e71b2538dcc801e597ab391d2
Date: Mon, 14 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647274284
