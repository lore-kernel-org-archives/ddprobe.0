Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A70D3D86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 21:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654207199;
	h=To:Subject:From:Message-Id:Date;
	bh=TepFzOgErfe/jDkynvZBnTOnhFBs9F56PaVUq5l/CZY=;
	b=hFXOS03g/ubd9UM0AfX6dbBiB+BqhYBxn45l/PekcvelGZilBU9AklqMsnMLjYnH
	WtnV59y45SE44d3q9FGS0wxaZPCb1/GNN3FXBbDlonkrFGU1iYZNnROVLUE9qr7k+IH
	QAR24Dmg+7iWazi9tDChoyUHuVQYDZORM9VROe4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654207199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TepFzOgErfe/jDkynvZBnTOnhFBs9F56PaVUq5l/CZY=;
	b=cFKR7tetFMphqPxYpZic3ybaDkS6+AVryKFFuL8NmbjQpEEJRz//lLXdV51f+f3x
	FQPUTh1OCFBn+1ebsnvLjwPrD9kwYomxjlEliEfXeViRUs2uwN4QBtI4iSdWkYJy9Fh
	PLTxjyXiiJoTyV4/jYnzTj0GdowMY+eSzYyZd0L4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181266eb7ea-64cc8208-f34a-47d1-bd27-fdb7ee4b60d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4edb87cdb8573852dd4bd309232c43667824587a40ed3f1c19a558f65e3dc6
Date: Thu, 2 Jun 2022 21:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654207199
