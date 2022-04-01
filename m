Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71E7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648828558;
	h=To:Subject:From:Message-Id:Date;
	bh=lK/NwBYN8uXIZPAbXCsz3zZPbbubFnQd7fSL5PAVKWs=;
	b=gG0RLuAPSpfkjnGKReJ7WpwMVwSrUpD8QIFIJg2NJlQBM/0R3Z9ooL8f5lvm/71A
	R2ilc4g3zeXzeE9Su/VbIJHe1x1okcNwUit0nlQ4HxbX3ma0q3ujWUmQ9RMXmNJkFvu
	cICiOwJlOdtIjtE+v1vjl5vaN5c+OkgxLNPrQc2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648828558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lK/NwBYN8uXIZPAbXCsz3zZPbbubFnQd7fSL5PAVKWs=;
	b=GSXariDVAv2oPuGCB910CYHSpGQOFHgFTJu+MamBlj3ZI4laJo81Luk+a6ExsCI7
	3nWVgymz61Eimss5B6lyZmsrUytVS256rITnHW6E4QVPG63c8P6osm/tFXzf3w+gUHn
	yzf/OYpg7Su8Sw+Hc9iLnlmFVMXUYPcMycXwybqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe5d72bc2-1263cce0-bff3-4cde-a5b9-9dc04ba8770a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a53ce16326740c878ff2a78b3a7bafd5c4e67bf6b82a62873585ddcd95f2b213
Date: Fri, 1 Apr 2022 15:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648828558
