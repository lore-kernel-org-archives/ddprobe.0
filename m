Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0827A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 16:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655223779;
	h=To:Subject:From:Message-Id:Date;
	bh=R7c9tywBSfoSuRJvID8lgPSthtGyU0Q6h5pjSxdcP5o=;
	b=W4jPXJCRWfWJcgL6So+GFMDIGYUXlueiAcqOiORmfLM4d+oIr36ZgmXUhih8QJNu
	p+sQ9lywXdLo68NMdwBy30890UJLQn+JfFMtyDDM353lZliVYh9OjPk+poupXTzMsJq
	00UK1OF7BnZrCV4aU8z6PszaR5sJDkUsgiXF7SYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655223779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7c9tywBSfoSuRJvID8lgPSthtGyU0Q6h5pjSxdcP5o=;
	b=E3IIL1k0IVx0C7ksMAbz6QvQYodRuLaxWmyw82ubrCENJr3wbDDku4mRAYesxEIt
	89xshD5SnSyYOWfjA/ziLA5fuhci1QYMY384OOVut84Hm6cRCJ9EUFpZlIiofNnm9Hr
	kvKkFPavJpcBOHprTubRbHEjF2w7R/3cWMAzY6fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163067fa6-1533e149-c0db-4d31-969a-d9def057dcb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 751ea71b8a1fdb2fdcd8c682c8957e15f0373807b495dff884b2a7554bffb70b
Date: Tue, 14 Jun 2022 16:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655223779
