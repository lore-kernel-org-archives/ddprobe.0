Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34B815A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653786479;
	h=To:Subject:From:Message-Id:Date;
	bh=BxF0CiZ+OA/g/VWJBcB1Py51FxvL0eC9StPGU+codUc=;
	b=NKo/7qXfYl8w5bK+7ueMq8D5y/AsIMYq5t8DnJDNlPbpuhbdxvXy/WSaonaG+8K3
	63ai6WX/8cCYxvHeFwy2i3zs6crbBE5ZdBuRr/39FthqbzIkqiKm9B2/I5kJh+j/paK
	OWd/e818BXz3SheX00SF3yx93my+sYD3jUNvG0pA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653786479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BxF0CiZ+OA/g/VWJBcB1Py51FxvL0eC9StPGU+codUc=;
	b=k9eKLr7qooR5Wn3iI+cZQhXgRGnOnpysXNQErFxyBptpExS/qJmmsy1xIlL6jZdg
	5A2j1yPjSHu/nJcygVTx2a6sXbCU8f9ZZBJ2LqYMNdFVQYM4m8GusrhahjlD+hnAJQW
	NjJfIHoX7qSh9bpS4PswQJVDv/9oI2Wnt6tY28YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d5b0ab0-1b3e9834-d21d-4c03-bac6-6217902fa56e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cad9ef869d14c639b3c5afeab88020b2aa01eed35458f8ee51c50a4b43ad86f
Date: Sun, 29 May 2022 01:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653786479
