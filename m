Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FF617E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647696985;
	h=To:Subject:From:Message-Id:Date;
	bh=bYDUloDGvvQSu8KfaDqQDl04y5psoGq98bFeTOLaENU=;
	b=Dt35qxTbI1GOr3+R99IpJEXPWi+/g4v5+Z8MXzx40WxakIx/42pz8FJhIodJ5QDq
	zA5lth3TGxg4sdRjifh5Fm6WzT7zH92G39xqFO3u6HIz3nf3yQ7Ix7OdsY97QmBjmUW
	+NB4GoUj5+MgZwoicbqFfFVYuR5uCu6g/MpKttKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647696985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYDUloDGvvQSu8KfaDqQDl04y5psoGq98bFeTOLaENU=;
	b=TAf2E/mO+pa4JZB5sJ1b1SpFD2j7mipgOLVcuTH9HEYwnkLx1s8iVrgnmpJU9Nub
	McHH6cJj3YTcmYh1lDo7g0si6MbBEquIJO2dna2l/PybrmmtsjsxhyDNwMw1GNwg440
	3TfFErOA/oT8tqL8+soXhNOH4zAw4JcijVAsqm6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa264ba91-f0cee127-285d-456f-afac-076d91fc6166-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4d43ee6bc00b346aba007ba12c8a07649ba7cbc452acb202b8f694bc89bfb04
Date: Sat, 19 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647696984
