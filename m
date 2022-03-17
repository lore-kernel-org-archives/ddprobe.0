Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B432F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647515485;
	h=To:Subject:From:Message-Id:Date;
	bh=eAuWDDK1JsAnnXLRL81a5wsxjPczyexodeXESz6OxTI=;
	b=WxWwuJ8PdsYb8ZV1ikeOIUQo07r0jLe1ztrmYIFfSNoN+o0B9ql86znfbRYPPqtR
	zq4o+ukWC/2vnZ5GzlnFFY5rozurNQhpjfmWI1KwNhwhpEzSHBt6Z9LkLFIkOEDr9TO
	+qMRYrRqeoqERm+FbEaNRv3stvcwGp/0tckPB1HM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647515485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAuWDDK1JsAnnXLRL81a5wsxjPczyexodeXESz6OxTI=;
	b=OmDy5mIC8+Bi/6iOK/VL51ys5YsC47fElhtP/8/LygdrLHDNqAWAehr+wcreObYO
	SEDpqejyb0kfBcBMr9HZOLP3Zvo557cnkdS0Ycm81HpxmQOkF/KimHHWptqQ+dir+/8
	h62fiz1gZo6XNMsrHLdYQL5cxay/aUAFSse0b+v8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9793424c-39c27e98-ef37-4aee-84cf-cab902326674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5f6c30fd86ab4273b2336393bc50b9fdb4ff014d5ee0fd9999c0b350dc698da
Date: Thu, 17 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647515484
