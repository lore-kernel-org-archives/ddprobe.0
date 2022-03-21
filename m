Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954C56144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647895884;
	h=To:Subject:From:Message-Id:Date;
	bh=uGGxHg5N0lvAxL2j5jGCWmEOBNSJ/YmTkeFVl/2nhGE=;
	b=MNZRSDaXQr9wIuKyfNKfAHu73q/7kaOkKk4z4gP0U3OeaV3rQqOCi8GdCVPBWJdX
	kUPgdrfwpnJlsNzwwXgIPQImYGQ7dsQyc4iPG1Ygr+8bb9ZtUBdJGvUJNcpDKxhoBcc
	NN1WBykiYEFsGVJlGuqEpmnanjVMWI+lzuca+WJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647895884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGGxHg5N0lvAxL2j5jGCWmEOBNSJ/YmTkeFVl/2nhGE=;
	b=gtYKNYrLOesowFkgzaJt5WH1sheAq0gzj0Q9waQxPoA0xSvASMrAyjQJwS/E+07w
	MWUn4DfRmeOMYPou/by4dg5SfFokazwc08wVEqSIYO/ByPLAjrPg+DthyFaqiK+VMgn
	iM3YoCgRFpWTKk6hybNkX5bS4Fm0ype/ZPQKPoGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae3fb3ad-55df1065-70aa-4958-b9ff-f8d955b1c030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77a59142256ac02a01b1644daaa0aba3e99b77023d1d19aef1690e84699dfbee
Date: Mon, 21 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647895884
