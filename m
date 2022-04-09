Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04114A52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 22:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649543398;
	h=To:Subject:From:Message-Id:Date;
	bh=0mc2w4CFXPyfwCJvPy6wZTFSMBWvwohb2QbU7zcvy7k=;
	b=UPlE/YlvrUumnI7PMuzvrLItbJ4vo/DmA93nIhVUyRKyzoIEsITTyM/tlto3cJvB
	9LoLHgtJ374ZlF+7TqkskQhO/1Ey8RlzFb+t41xqDh0ZrFaWWHOor4amE1rmuyfoNBj
	zq28gRq1nhmcyXL5Q9Nj9y+L3w8gen92vvqtB8vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649543398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0mc2w4CFXPyfwCJvPy6wZTFSMBWvwohb2QbU7zcvy7k=;
	b=Ym7uPkVToZgaj6421n7W/S/rbX+xXS+18A8+CbY9xJr7OaVYSCIPE6svmmJsZbQt
	ihNwfUH9Zan9wkuTwjobcag3nRNqP7Fi5KcQWjyHKVheocwrwGy4CYmpt0A/P9sd6XU
	5b+Sk6o/YGNiIhFn3GL99m+S2kn8Cf2sOHnXuEZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801072c3c8-2f1ccd6e-7334-48fd-9686-f20917b2dec4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45a3fa10e14751461bc28cb53aae769fc7ea1933c7925d77513133ad642ffb3f
Date: Sat, 9 Apr 2022 22:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649543398
