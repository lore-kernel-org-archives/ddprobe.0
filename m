Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BE2139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657459012;
	h=To:Subject:From:Message-Id:Date;
	bh=7/l9EJBMZYDUaOY6IkbOJLYiy1mZEMALbbPFrU0S33k=;
	b=iHyrRI2Jx2y2OgrJEXAvmMehRkUHyueyw38hJ8U71UCJ62qmTXoa3n3G3oT6v0mU
	UwKPIr+3akYA/+SYg3F5ClfQvASnZgyXFAw9hyFjD0x6U2LGZKQQ6b5JKXMpGmmhWlH
	tEJkvsJfJn3ytk51n8eCnPNgPe0FIFnELL+DyVaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657459012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/l9EJBMZYDUaOY6IkbOJLYiy1mZEMALbbPFrU0S33k=;
	b=VA+bmQ5A8T6RoDDpKGGbMXnlqLktbw9KXZs7NrEZQL1eZcHvlS3Cy1RKOOLErEwI
	ke34cvJHI9qgYw5H8hHmr2kfuzOjVbam0n66mmj9W3xhw5GCeluci/jOd7g4a8Hjtv+
	qOseZPB4YJzzQLxygILLPQmLBXYfZ2B88tqtyJVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e841730a-13d70788-a237-486d-8362-8b5b75ef3598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a808eed4362937ca1901f2211f3598dd750709f729c9206ac4ebdafa9b717bdd
Date: Sun, 10 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657459012
