Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6819B110C
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647340284;
	h=To:Subject:From:Message-Id:Date;
	bh=/S4UeSiFqANWtaEwZPkBplo5j6Igc3Kenj/D9FdPgC0=;
	b=ODB7nx3Uo4AElgIiXL+MQe0qKXOeGBzPbWDAUT80pZ32Q3wbQjtnIQvTDx+t9a+v
	TMWjOmR7ozw+EjL76C6UUwTOpwfUs+u4paB0iq2mLEDp1z/9vhOE0GkYflpzbtL2nM4
	BPirj0QkMk3XJpFbzrr5ShAvfI984eFbRfiHbehk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647340284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/S4UeSiFqANWtaEwZPkBplo5j6Igc3Kenj/D9FdPgC0=;
	b=Mp9i0RpA3MsMo80GPo3FonjvK2yiCNrtISJ7kVf/kGRYe7cwtYFDHQnEsvFXNcU+
	oYzXPJzBXW64PMwyzZsy7o6YaHbgMQsK1AOXb0yDdDuzqgS8W/CeRCsPZdeOqHWfhCn
	Ifmrp18JzDCHhUru0sTRI0c4P2s+CjnG+47UaFbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d21eb5d-a8c8c65e-aea5-44ec-8371-7876932196c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bcffb001d5d034763d0c009c1e2816b7f2c03cd315810c7c130b4a30250325b
Date: Tue, 15 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647340284
