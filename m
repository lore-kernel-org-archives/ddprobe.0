Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9538B7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 03:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654832100;
	h=To:Subject:From:Message-Id:Date;
	bh=o4vkvlKTJCpW2l47z2zLmm4XKC0b/6icEnigfgH6y5o=;
	b=CZRRyec1Q8Yx0U5w5+vGyWe6lu38ljuM6x39ds9brOMHk0R887ISFIAtSOArOdxt
	jbORvqIITa/RkHAo95qb82CieF2niaOENsHZb/mJkdPmwVhy+eshQgk6seWIO+9dnYv
	4LO/XTmLAxSUGzuhBpDqWOMdxdFRlyEUB1WUUMag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654832100;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4vkvlKTJCpW2l47z2zLmm4XKC0b/6icEnigfgH6y5o=;
	b=SYJkYizhjQMmxA6u98lL+HVp/Ev06a7HUE2JTpYASE2eu3vLcCraONERFceqyMx8
	yH1bO1jvtS8E/1cKFWvhp+kAcwMaOk0kVrRj9R3EFz77MfX4nj0VkXnyQOlID44bxHV
	IEqKk9eebOc0emYwaL9AlViW3K02yCBogjSYJ8Ug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814badf027-a632b026-c379-4e46-a879-8cb3b7de3ece-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d01c9e553f3ffd8f4ba7ef7044041798cb7c6d818e57f66e3144a35856e2029
Date: Fri, 10 Jun 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654832099
