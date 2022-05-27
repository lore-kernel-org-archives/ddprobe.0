Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FDE1841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653619080;
	h=To:Subject:From:Message-Id:Date;
	bh=Dxw0Z2quf1V/SY48/sRfPKzu+H5YRWe8S4AHVyRzrc4=;
	b=HenPBKywJglXl7LStRhlgM4nsIuuA+3QoU/E0+sU68jMaEpSvUHlmYsETLhqZA4J
	tK/drRxxpTMLIqv4BPHxnk9xwfiU3ZI9gO35hX2on0HgUNdgh7Q/CfwGLqCcmmZEF4K
	iln3EuaIhaONaoouCUViM1li6umDkCaJOtvidP20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653619080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dxw0Z2quf1V/SY48/sRfPKzu+H5YRWe8S4AHVyRzrc4=;
	b=FbzTNEgG+j6TgZNqO5wQOse2H6VHO3tI+2Iv9cE55hMUACYpWk3bd1Bt7sqOCk88
	WQnnW4FE+xtpa8a3v7GPiT9rc6rVKNx6hsri9ZLEvnAh+7ubJYTlTbwKE0MQ+sikPOT
	Evw3GbWJC07B/iYy5gKFhmSn8WOlGl6+ru9JNYv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810360b890-809a40dd-b4fd-4bfc-a5fa-ff6656eb37f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5099ecc791018c747a736888730ce8690fbe289c21778ffec231cf31d791a9eb
Date: Fri, 27 May 2022 02:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653619079
