Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB347B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 17:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650992998;
	h=To:Subject:From:Message-Id:Date;
	bh=O7mK7jnA+oE1KV4shT7oCLH7HcKA7jBz5s21lSB+W0Y=;
	b=En5beydc/N0OSrMIajzVj5iQg6gg0MZvjIT4wes4Hc36KoA1TFU5dL1zwhsIlZYM
	lTO2YwcBH/gNCNHdx+qWzhgKbMUReq/sSXc+Mf8zHaDCbtHLcV1jSwuhwCQ0gPMB/Mm
	w103T2Xvkdh4NoFMhIgOV3CSe9D/7kj8oIkd1fMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650992998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O7mK7jnA+oE1KV4shT7oCLH7HcKA7jBz5s21lSB+W0Y=;
	b=KpKmfcJWyQks8e4mnoSxlVBSpqKuxDSCJTbcUKRYn/4/3bQ+9qvRlqN8GcE2v96o
	5667QMxv/6ie6n2C3C3UDs+n0RWyvKGkyeGUOJzqpE+6N/FM0SaF8UuyO70ofsetsmZ
	yrhOwZZu+XoA2Xe5azsuhUEJjmNmd/LE/PuwylUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066d9e781-82e7e400-23dc-4741-8bdb-f62992aba720-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7dd1179efb5ba4724ed2f6c402e41aa163e94f318754a6b50be928c8e71744d
Date: Tue, 26 Apr 2022 17:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650992998
