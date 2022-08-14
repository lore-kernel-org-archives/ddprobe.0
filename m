Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA21EC3
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660516252;
	h=To:Subject:From:Message-Id:Date;
	bh=s4Jiq4ZJz50Zgjb1LvcpDN9wZ35aAsFvgBunZJKa5BQ=;
	b=G60Jo1OlY/TeZ49lNSR6FNBtvr9IhgvICQFO6AtQgDIS+GVx6ns/bC4X60Z+yWVg
	GLVY27/sDurs88mI08g7CvPPrTfde1qQBA4Mj6jAp4mUAlhyv2SZMBXcmcRXf8CA8F6
	uxJNHy5CPVkE1wdnVDfBfXfWp/pO+B4H9YYGGJ94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660516252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s4Jiq4ZJz50Zgjb1LvcpDN9wZ35aAsFvgBunZJKa5BQ=;
	b=P+4kogUlMpqO1dNWJMsBCOk7wt7eVSiYC7rerjhiqLMMruDAumSv+pk/nsBgupSq
	1uuQ5R6C2cUNlQKVJZAoVpVG46afLt9KMuAtWdVokGH5XqPneEE09KvfVxVttHYXBx2
	ib1eks5PCiPhznhS4UYMJG6Xo+CKndMTbl7lmxI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e7b3b9f-6657ab79-2fa2-4703-b635-a77c39fb3e9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bab724d4e66dfcc7aab61df4a0e93b7e25b8fdfc3e9b068fd92af091e66ee7d
Date: Sun, 14 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660516252
