Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036737B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655658659;
	h=To:Subject:From:Message-Id:Date;
	bh=my7xQYXBWdvWMk8EQVymjfLk3NxVT1n4U6C6ngF0hvk=;
	b=fq5QMIXPM4nZzcTojgw2ip6Asl/JBARS7f96KqF0wLeEcjohWHmO9HMHmnI7cYEv
	xnhQO4xnkPZA9O6Z1c6zmmWxROk3l00fKzxv5XtBv7k5ImwI9OV840jkO88ka0yxPyf
	9smSDkfBS0vFS4W0nTxE+DvhCQ3nVQiFFngIHjzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655658659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=my7xQYXBWdvWMk8EQVymjfLk3NxVT1n4U6C6ngF0hvk=;
	b=bWNBGhJ5FjGU1fOTCIn+AmQQrGaBxB+F7Fhz3QUrBiJVNh9BGMWJdG/jdXZzoaPn
	oNVm23my3T+g79hzmTwwkU5IXN2MdAKqEEjLyG0I8b9nLKH+B8Zz5dq1kZHhgO59isH
	cyKlG7Pagi/IxO/O+qFC6LC/DFp/MBUbNVvDnvPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817cf23da8-7aa8c84c-b335-4ec8-9038-e0f8abee743e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61ae5275d092383b8bebfe579cc27822beff231b5cf861687d84df9b8ba06ee6
Date: Sun, 19 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655658659
