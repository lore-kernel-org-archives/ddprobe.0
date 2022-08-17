Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC782F2B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660778453;
	h=To:Subject:From:Message-Id:Date;
	bh=iuqUuP7ZQf9aqdUloegab7Zwr+QHA7JFAMFLX2HF+30=;
	b=VXn/412iSfKZC4H2ZFaWZ6Qkkutmt/VxRvN30sMWHqHsZi5n24FKEY/scXjC1sKa
	ZIgAoO3tn5TPcGAziRL+6rp0q08A0ZTHFQltW++60Id5lYxEWti+nvWGGP2AUvpqAAE
	QLWhD6RBQ0ZEU5K8xqotHu4b0mTsxME5uGFM80Fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660778453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iuqUuP7ZQf9aqdUloegab7Zwr+QHA7JFAMFLX2HF+30=;
	b=Cg86/PQWn2dg9a0PO/aHgGvzFK0BXsDI9K9FszUwTWp1F0Ab+l22Shh35niP2Cp4
	p4dwhht2l52kh1A5lMCYCD6LqEX3DFoBQL0Yu2zSWVN9MXZro6CNGHWd5lNIu43Yg6K
	oXyavBPq7qTXMwvE5UvX1JD0q7N07X2HLWWsrHhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae1c165a-5a2976cd-1e19-489a-80ac-05973ece6e77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7553a6e66aa273dbc4b013e25bec4adf4b041f5d810bca2dc2e2664c85b83b5b
Date: Wed, 17 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660778452
