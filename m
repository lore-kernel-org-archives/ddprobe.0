Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0898C1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655912279;
	h=To:Subject:From:Message-Id:Date;
	bh=FKYLT63gVrYBQQ9qcXFPRzDJ095prH4qkLHIoo4MkU0=;
	b=cCTxHl0cihZ8fVhJBuGgB/IhXuy+sU30xsAKtKeMZbDP0pVUBfic2z12+AlGT38t
	6GOfxveF0quS1IRAKv/1jSlTC2s/EpD6e4DBUPyF0dr5rAgLTjhd8TwtVpNQ3VjdAqu
	UxyJ4nJAjZoYvebjYa1ydRC5yRRk/31rMetnfz4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655912279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FKYLT63gVrYBQQ9qcXFPRzDJ095prH4qkLHIoo4MkU0=;
	b=ixd2owZpSUuIDMp5cBSlX5xQcG9ppmWxivHkjYBob9jYHd6Hy99zBCy5FDM0VYuS
	I7wa9o5e4XAbT3NdF0OtkABPoxeHYRZEoC4yup6ZDg0eEtDP2guxe1RN0/mz7/Ea1MV
	tkJK0s5vgMjrEU5xhF7pWelF/YKeua4QZFw1GXcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c102cee-cae3ae49-9427-4da1-bcba-ddc33ccb76ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d32897b21e37184a21d5057911b157ddd7345095447efe6e3a85f64ae66a5e23
Date: Wed, 22 Jun 2022 15:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655912279
