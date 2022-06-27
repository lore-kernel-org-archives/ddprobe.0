Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD64C77
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656360412;
	h=To:Subject:From:Message-Id:Date;
	bh=3caIPvjff71yiq7NPfZxsWRQww76FbqBEKi9qVvhTL8=;
	b=TVV4JFRJtf3xczJxeue6BQJP6C7ESSdKPHzH3RUrpJOZYp2r8YY+/M6/jcPCrBSW
	JrheQfMBK0lRkuIhwgmLCONmsqYuaLw0bQDuUuHXL7khkoOle4MQlB0+64xbbsyDRQs
	KIhjEMdarqFobtQ1qsuFnmZJU0RLvtFvQrwa4N3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656360412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3caIPvjff71yiq7NPfZxsWRQww76FbqBEKi9qVvhTL8=;
	b=YGFpy5wPJbeYfHpMS6Bnxtwim7sJ/Eh0uZ7kde06d2Izvsvxw59BFMZgHoBf0/7c
	urLYvMNL9/84nLDHIPIeRlUYbN7Y3W6SB36jFg2ssA1ddAbT9/S/U703VpUgQUDTD0G
	KalkX5BOwQkrhykmInU4fLoX721kfULRKCyHtQik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6c624e8-dbe5b691-a24a-469e-9bdb-f6d85f7e15be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de31fdb585fb6dffb38a874d3ca9fc7774274f10fe171d317ba7a752dd33d16f
Date: Mon, 27 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656360412
