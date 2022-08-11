Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F664A0E
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660249252;
	h=To:Subject:From:Message-Id:Date;
	bh=6j5q1wbENx66Bu1VihKtF8AHZkXAR/0Gkt+D1+38bU0=;
	b=CpCi2I3j0Hf/smrkJlAGPcmzoIxBDVEMvfE+igE2p/6J6JY44O5Zs2zEasrXH7/q
	p/aBKxIk3wT3RO/xyksUrTro4UNDWLoP1U7Bd36YwPknvscxpo3lFul/beAMMOYPXh0
	S+K1aOmto4e4PanvVfvBkxKUCGIr3RjM07f4tGrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660249252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6j5q1wbENx66Bu1VihKtF8AHZkXAR/0Gkt+D1+38bU0=;
	b=AnLeTqVSo9co/lLQHIxJw5E0g9Nd/4r8a0iU6XFHcY7cUhtDkoCG7aLikZuGTpSo
	1QYVDNnhkTYm9dLZ7aqSVXFH2wnBWdpyKW3eLgWYBd4bJKbUU2QqN5RojxDeVhDY2Of
	bHm5BRPyyfeWwgKvBadml686qq+KtSQ1eq0N6pxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e912301-572cbe9c-fe40-4aa5-a2fa-b242d17a207f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 694749895c3536bd4f6753132ec967f22b372cd251164f510a641435100ca88d
Date: Thu, 11 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660249252
