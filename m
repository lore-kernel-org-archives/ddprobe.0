Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4B07E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648229519;
	h=To:Subject:From:Message-Id:Date;
	bh=KxkPrEAqrDRzrFFdxEkKJXDE6gD6HYOzNFru4wHvG8c=;
	b=GEnNZgiIlNSkEFTYVkGdCErkQ1rsIJbFsyeZ9ZzKbDisUac87fi7azoZEDAI1G2S
	+gDS8/LZRjG7MGGiZ/lDNhAaYgmRCsTWFJYtBpqq8xdK1DPdgcIrPefG0nP5g0WrqF/
	GXt8dBlV76l7xGhaA+clHJ6mFsZLCr0RBpznv/Fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648229519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KxkPrEAqrDRzrFFdxEkKJXDE6gD6HYOzNFru4wHvG8c=;
	b=TLLKQtViXwUNbxVfjIqWHdYbBkLPhluJLQhE6uQA7e4UyGuQ3O24/MZdjkXk3O/y
	3EEfGXiiMqi5G+EBxqchO9sWaK4v6NG9W/jXcbPVbhvC94Lkt1SUKW03QwIgkNW1gCh
	G18ju4CckNTJYAHwdfW8J4hPY4CSY+ZsWmslCRt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2228c00-6d33d80e-2cf8-4ede-aa97-07151652a304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8f1e83c0a1b78298fc073e62116bae55d20d2d760c6f53ba511d1b513b9fa10
Date: Fri, 25 Mar 2022 17:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648229518
