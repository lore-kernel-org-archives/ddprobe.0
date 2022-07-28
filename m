Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D1E7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659041452;
	h=To:Subject:From:Message-Id:Date;
	bh=DLtH/cukdRorvFv5NA4xCbg8IZAoFvpmcfhCFDnLugY=;
	b=jeDIktojam010M7TSZWqUsv9m3Z3gvEV8L6CC0HL1ZAocs8vVjh34SkRsZG0Xwr9
	45Mrhb0rWO/yZ8fxhNdlkJrW4d70TeIjSKQFtrKgnUDYkBr/sOmBuuesAJK89eEdNi+
	Vwk0VIwWp5S99YgG+NkbD0+6k+0QkTPrsXVH8FOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659041452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DLtH/cukdRorvFv5NA4xCbg8IZAoFvpmcfhCFDnLugY=;
	b=Xc8QY+JSQV4LIEah+MM1hG8GGrMyajAa+0aTOjsL9MUyq0zK1QE2IfrKnWzOFhZK
	iaKYJ57MBJf9vODrjpCgjQvJ4WT4QEaSNFJLkReyH66K0+b0TzF/0Mvz0zD+LBg2dQ7
	CIWsNOscsC3PBeaKSSx/HRQjcVWNNdoQyKIQbWto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246939210-605ccf39-ac68-4b10-9070-63c3482b1b68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c0625cf86a6d63023eb83c836bf4f58067c3fcd1fb00128abda3b5f46931894
Date: Thu, 28 Jul 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659041452
