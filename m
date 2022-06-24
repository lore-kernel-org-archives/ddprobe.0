Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5412F23B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656053212;
	h=To:Subject:From:Message-Id:Date;
	bh=soPKJqxyy9bynl/ONk8xKHK0EsoEm3wLBEiUtMBWGAM=;
	b=B6OOh7+PpaA4eezAVtJ0bbk+2zo5lxAnWPrfFmywRKs00t9ZyFDt8KO2Oypv14Kz
	2Ycq39sLvO8cxe70feztSgFqW37mL9LFBdzbK7fwCYxVXO9Od+LTXtoeXBFQ89Du2Za
	TNZkU8IQi3T6x44acPLsDvG2Z62sL1AYNO7U07ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656053212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=soPKJqxyy9bynl/ONk8xKHK0EsoEm3wLBEiUtMBWGAM=;
	b=P66ugebkjOM8ztMQT765UxCH9mFDgudvfnxLho6iL6hxizE5A3LitDqHXI11WpTO
	LhjWmJiTHJbfhBRBwcqjt3hwitB8xlWC9XDo+DdOnuZW2RojxSDzk+YII7XBtCE6Oyr
	IqclhqRUB3BiDQO7xq+YRDKfkerUx0igZP1tdJzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819476a47a-2209fd1a-0975-464b-973f-bc9bd256a886-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 434a6f376be4b2f6a69f768d21da3ad32e1e324bccc2a1ae674b09f8d8f1f5a3
Date: Fri, 24 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656053212
