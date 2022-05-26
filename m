Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126B47C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653567119;
	h=To:Subject:From:Message-Id:Date;
	bh=Ytg0jTNeDLv/01qdP08ofAWMaHqON4H7aVjQTlfV9Yk=;
	b=iopnzAtptD/r8hxIszSibO02jgdqicePgbamT7L7x9cT0yQDUXgTx+HDAVGWr2Zq
	gZfFTG5U3xO56W1990lHphGk8ClFZDXOishVaspCeV4RTtnBMjCecMCGIZXWvuc6TA0
	EFDrYcPx6y7iYVM0cx9guD3i6MqbNbU5dSOZXGjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653567119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ytg0jTNeDLv/01qdP08ofAWMaHqON4H7aVjQTlfV9Yk=;
	b=T9Y+6N2JFfWRLlpctNnLasedt3av2AMtcMHlX+xEpnmP4dVL4wwIuK46IlfpPG8d
	t2SjCzWMzEUEbZgMZ0bHMOo+HROEufBTpLHT1ogA+7fw8W+HZxPVl4IXXtTsFdxJJtb
	1I7TJ8TWWM9XfdQUmzHMR2acakV21FPA/m3KY4EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810047dfd9-d5b4519e-f20a-4e4a-9308-b0ef7a5bfc51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71961b1ebb8f4cbd6c94446461b0937eb5a1b1679e511a38879d34ab545da759
Date: Thu, 26 May 2022 12:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653567119
