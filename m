Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119AF2596
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 18:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652554619;
	h=To:Subject:From:Message-Id:Date;
	bh=x6V40ZN8Mmpu3H87mixQ2xiZuyHqu/Nc46C7T3lPDs0=;
	b=Y/crIhLONHAxmjEmei/DzRjWlHUsdvIuEDSuzSUdIFXKMh1ahpiwxbXK1KsckVLe
	8lAPSWXCN+a+FBjaVgconTAz63jRAd9ukKWJSvrbPC0X7WuD5qEADCTZV4CqFWPozZ4
	x81BecuQgOnUWJkTLUyyKbcPtzpl6o1ZRiX7mLQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652554619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6V40ZN8Mmpu3H87mixQ2xiZuyHqu/Nc46C7T3lPDs0=;
	b=jAYZiTQVzPynhfsv7nNSw+JyoEAoTRSAn+FvYim/JNCObBqkM9ONU6i/N6ih6O3C
	1T++8OGwab56Js8WmgtA+VqgrUXpU/E0atsxhD8eZ69gh1lTV3faG6VbFwe+WuVnGLX
	A9UsNG/U8o/O88l6AHSEE7oDOxE6ramgXoQdI26A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3ee597a-d2502d89-24ec-4a15-9190-720ce9850842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 613088aef1a309bb3fe1d56ec556d3cc558fea4626701a5dd9e7ba6ee16a1f51
Date: Sat, 14 May 2022 18:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652554619
