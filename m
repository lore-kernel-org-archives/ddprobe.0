Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152BB7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 18:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655576939;
	h=To:Subject:From:Message-Id:Date;
	bh=e5GodeKGwgZbQaPVjz4TG6rNFDUEg3e4zLfjw9b3Kd0=;
	b=eUZn3gnxvgt572UeOgXnq0bVn2aE2v8QeudsCaXTtnZNEt9YYPt71aWziLd/z9F9
	SrEjXhwCUaLxC4G4BueEOUSWqas/CeHMXTHNNZl/zup4zSAHe7FcJRqNx4r2Xi34Uzu
	Kej8FKPr4abiT5YudZf+yqKFWxFJnj7XOU6hYdM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655576939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e5GodeKGwgZbQaPVjz4TG6rNFDUEg3e4zLfjw9b3Kd0=;
	b=EHLiuECBS1phxRUEHGA2PvawzPhtKE2N7M66VV8Cga44Bjn3siQdG4jvejCkfKB+
	9BkQR+0vEonYUe5GIIQEPS6B2c0QAe2x7re9CK6LvMkUfvUCrD2X8AHGdQzPBG4eFhG
	QPDOdjDl5WxIv+nshj9RMq40B/RzXkAUwoazP648=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178134b13-bbdcaff4-fb97-4686-ace8-236d3d785988-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8818f6e6be3a7a5a24170140ef4f3858f1548377c05c724db3e168e02ff706d8
Date: Sat, 18 Jun 2022 18:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655576938
