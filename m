Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D157A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658017612;
	h=To:Subject:From:Message-Id:Date;
	bh=Ch0x7zthVtC/JJs1V0BotLjAXT2x2WfDbo8i2Iv4EpU=;
	b=GwbVcN6g6Sa987D9RFMcV3MN8/wyG2y3aKWRiOmNpp9llO9+EXaFFGqCOsIUdXRB
	IrDatR+fdRYS58p6fP3RGsDhlgvLVDNJI+dsWIgGyDm+fgAPMRh7slT2A8Fo2X3Rzu3
	ESktj8SImMrTzhfTCtpVIqYfHVMxe2ru+dCOWg8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658017612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ch0x7zthVtC/JJs1V0BotLjAXT2x2WfDbo8i2Iv4EpU=;
	b=D2r3TXH6ghEvqZWsDgcqAqAwCvtKHelhsTdCxS7lzLv7YLVqJCv4giiiYQ/n5jcY
	+zUEEWL+GkNiURKaU5nVg+bqZ48yvXMQh9KQc7rUUqcft97IRAKxxSoJBHOVhtTpt7B
	rDJKAHecsh/ghmVJVGHbeEbxrxOEqvf4IypYcY/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182098d0227-408f2548-a5d2-46c3-a94b-1202fc695c68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb129ef70222270ae512c2996ba83458910d6dd79e2c3376f291fbf78a8bea93
Date: Sun, 17 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658017612
